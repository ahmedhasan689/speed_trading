<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Order;
use Appstract\Options\Option;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class PaymentController extends Controller
{
//    public function createOrder(Request $request, $id)
//    {
//
//    }
    public function credit($id) {
        $client_order = Order::query()->with('details')->where('id', $id)->first();

        $token = $this->getToken();
        $order = $this->createOrder($token, $client_order);
        $paymentToken = $this->getPaymentToken($order, $token);
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

    public function getPaymentToken($order, $token)
    {
        $cart = Cart::query()->where('user_id', Auth::id())->first();
        $billingData = [
            "apartment" => "803",
            "email" => "claudette09@exa.com",
            "floor" => "42",
            "first_name" => "Clifford",
            "street" => "Ethan Land",
            "building" => "8028",
            "phone_number" => "+86(8)9135210487",
            "shipping_method" => "PKG",
            "postal_code" => "01898",
            "city" => "Jaskolskiburgh",
            "country" => "CR",
            "last_name" => "Nicolas",
            "state" => "Utah"
        ];
        $data = [
            "auth_token" => $token,
            "amount_cents" => $cart->final_price,
            "expiration" => 3600,
            "order_id" => $order->id,
            "billing_data" => [
                "apartment" => "803",
                "email" => "claudette09@exa.com",
                "floor" => "42",
                "first_name" => "Clifford",
                "street" => "Ethan Land",
                "building" => "8028",
                "phone_number" => "+86(8)9135210487",
                "shipping_method" => "PKG",
                "postal_code" => "01898",
                "city" => "Jaskolskiburgh",
                "country" => "CR",
                "last_name" => "Nicolas",
                "state" => "Utah"
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
        return redirect()->route('success-page', compact('data'));

    }
}
