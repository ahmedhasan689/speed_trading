<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\City;
use App\Models\Order;
use App\Models\OrderDetail;
use Appstract\Options\Option;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class MyOrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Application|Factory|View
     */
    public function index()
    {
        $order_done = Order::with(['user', 'details', 'address', 'provider'])
            ->where('user_id', Auth::id())
            ->whereNotNull('delivered_at')
            ->limit(5)->get();


        $under_order = Order::with(['user', 'details', 'address', 'provider'])
            ->where('user_id', Auth::id())
            ->whereNull('delivered_at')
            ->limit(5)
            ->get();


        return view('web.my_order.index', compact('order_done', 'under_order'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Application|Factory|View
     */
    public function create(Request $request)
    {
        $cart = Cart::query()->where('user_id', Auth::id())->get();
        $one_cart = Cart::query()->where('user_id', Auth::id())->first();

        $cities = City::query()->whereNotNull('upper_id')->get();

        $governorates = City::with('cities')->whereNull('upper_id')->get();

        if( $request->ajax() ) {
            return view('web.my_order.items_create', compact('cart', 'one_cart', 'cities', 'governorates'))->render();
        }

        return view('web.my_order.create', compact('cart', 'one_cart', 'cities', 'governorates'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Exception
     */
    public function store(Request $request)
    {
        $cart = Cart::query()->where('user_id', Auth::id())->get();

        $single_cart = Cart::query()->where('user_id', Auth::id())->first();

        $coupon_exists = Cart::query()->where('user_id', Auth::id())->whereNotNull('coupon_id')->first();

        $vat = Option::where('key', 'vat')->first();

        DB::beginTransaction();

        try {

            // Create Order
            $order = Order::create([
                'user_id' => Auth::id(),
                'provider_id' => null,
                'address_id' => $request->address,
                'vat' => $vat->value,
                'coupon_id' => $coupon_exists ? $coupon_exists->coupon->id : null,
                'shipping' => 2,
                'discount' => $coupon_exists ? $single_cart->price - $single_cart->final_price : '0',
                'price' => $single_cart->final_price,
                'payment_method' => 'online',
                'name' => Auth::user()->name,
                'mobile' => Auth::user()->mobile,
            ]);

            foreach ( $cart as $single_cart ) {
                OrderDetail::create([
                    'order_id' => $order->id,
                    'item_id' => $single_cart->id,
                    'quantity' => $single_cart->quantity,
                    'price' => $single_cart->quantity * $single_cart->item->price,
                ]);
            }

            DB::commit();

            if( $request->type == 1 ) { // Online Payment => Redirect To Paymob Gateway


                return redirect()->action(
                    [PaymentController::class, 'credit'], ['id' => $order->id]
                );
            }else{ // Cash Payment
                return redirect()->route('success-page');
            }


        }catch (\Throwable $e) {
            DB::rollBack();

            return $e;
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Application|Factory|View
     */
    public function show(Request $request, $id)
    {
        $order = Order::query()->with(['details'])->findOrFail($id);

        if( $request->ajax() ) {
            return view('web.my_order.show_details', compact('order'))->render();
        }

        return view('web.my_order.show', compact('order'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $order = Order::findOrFail($id);

        $order->details()->delete();

        $order->delete();

        return redirect()->route('my_order.index');
    }
}
