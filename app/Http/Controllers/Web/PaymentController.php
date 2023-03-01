<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Order;
use App\Models\User;
use Appstract\Options\Option;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class PaymentController extends Controller
{
    public function credit($id) {
        $client_order = Order::query()->with('details')->where('id', $id)->first();

        $token = $this->getToken();
        $order = $this->createOrder($token, $client_order);
        $paymentToken = $this->getPaymentToken($order, $token, $client_order);
        return \Redirect::away('https://portal.weaccept.co/api/acceptance/iframes/'.env('PAYMOB_IFRAME_ID').'?payment_token='.$paymentToken);
    }

    public function getToken() {
        $response = Http::post('https://accept.paymob.com/api/auth/tokens', [
            'api_key' => env('PAYMOB_API_KEY')
        ]);
        return $response->object()->token;
    }

    public function createOrder($token, $order)
    {
        $cart = Cart::query()->where('user_id', Auth::id())->first();

        $data = [
            "auth_token" => $token,
            "delivery_needed" =>"false",
            "amount_cents"=> $cart->final_price,
            "currency"=> "EGP",
            'order_id' => $order->id,
            "items" => [
                [
                    "name" => 'item',
                    "amount_cents" => "500000",
                    "description" => "Smart Watch",
                    "quantity" => "1"
                ],
            ],

        ];
        $response = Http::post('https://accept.paymob.com/api/ecommerce/orders', $data);
        return $response->object();
    }

    public function getPaymentToken($order, $token, $client_order)
    {
        $cart = Cart::query()->where('user_id', Auth::id())->first();

//        dd( $client_order->id );
        $data = [
            "auth_token" => $token,
            "amount_cents" => $cart->final_price,
            "expiration" => 3600,
            "order_id" => $order->id,
            'client_order' => $client_order->id,
            "billing_data" => [
                "apartment" => "803",
                'client_order' => $client_order->id,
                "email" => $client_order->user->email,
                "floor" => "42",
                "first_name" => $client_order->user->name,
                "street" => $client_order->address->address,
                "building" => "8028",
                "phone_number" => $client_order->user->mobile,
                "shipping_method" => "PKG",
                "postal_code" => "01898",
                "city" => $client_order->address->city->name,
                "country" => "Egypt",
                "last_name" => $client_order->user->name,
            ],
            "currency" => "EGP",
            "integration_id" => env('PAYMOB_INTEGRATION_ID')
        ];
        $response = Http::post('https://accept.paymob.com/api/acceptance/payment_keys', $data);
        return $response->object()->token;
    }

    public function callback(Request $request)
    {
        $data = $request->all();
        ksort($data);
        $hmac = $data['hmac'];
        $array = [
            'amount_cents',
            'created_at',
            'currency',
            'error_occured',
            'has_parent_transaction',
            'id',
            'integration_id',
            'is_3d_secure',
            'is_auth',
            'is_capture',
            'is_refunded',
            'is_standalone_payment',
            'is_voided',
            'order',
            'owner',
            'pending',
            'source_data_pan',
            'source_data_sub_type',
            'source_data_type',
            'success',
        ];
        $connectedString = '';
        foreach ($data as $key => $element) {
            if(in_array($key, $array)) {
                $connectedString .= $element;
            }
        }
        $secret = env('PAYMOB_HMAC');
        $hased = hash_hmac('sha512', $connectedString, $secret);
        if ( $hased == $hmac) {
            $response = Http::get('https://accept.paymob.com/api/acceptance/transactions/'.$data['id'].'?token='.$this->getToken());
//            dd(preg_replace("/<!--.*?-->/", '', $response->object()->billing_data->email));
            if($response->object()->is_bill == true) {
                $user =  DB::table('users')->where('email', 'user888@test.com')->first();
                $order = DB::table('orders')->where('user_id', $user->id)->where('payment_status', 0)->first();

                $order->update([
                    'payment_status' => 1,
                ]);
            };
            $carts = Cart::query()->where('user_id', Auth::id())->get();

            foreach ( $carts as $cart ) {
                $cart->delete();
            }
            return redirect()->route('success-page');
        }
        echo 'not secure'; exit;
    }
}
