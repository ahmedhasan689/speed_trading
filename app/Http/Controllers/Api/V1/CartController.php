<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\BrandRequest;
use App\Http\Resources\BrandResource;
use App\Http\Resources\ItemCartDetailResource;
use App\Http\Resources\ItemCartResource;
use App\Http\Resources\OrderResource;
use App\Models\Brand;
use App\Models\Cart;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Promocode;
use App\Models\Token;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class CartController extends Controller
{

    use ApiResponse;

    public function index(){

        $cart = Cart::where('user_id',Auth::id())->get();





        return $this->okApiResponse(ItemCartResource::collection($cart),__('Cart'));

    }

    public function cartDetails(Request $request){
        $cart = Cart::where('user_id',Auth::id())->get();
        $total = 0;
        $deduct = 0;
        foreach ($cart as $one){
            $total += ($one->quantity * $one->item->final_price);
        }
        $vatPercent = option('vat')/100;
        $vatValue = $total * $vatPercent;

        $shipment = option('shipment') ?? 2; // TODO shipment cost

        if ($request->has('promocode')){
            $promocode = Promocode::where('code',$request->promocode)->where('from_date','<=',date('Y-m-d'))->where('to_date','>=',date('Y-m-d'))->first();
            if ($promocode && $promocode->to_use > $promocode->used){
                $deduct = ($promocode->percent/100) * $total ;
            }

        }

        $final = $total+$vatValue+$shipment-$deduct;

        return $this->okApiResponse(['items'=>ItemCartDetailResource::collection($cart),'total'=>$total,'vat'=>$vatValue,'shipment'=>$shipment,'promocode'=>$request->promocode ?? '','deduct'=>$deduct,'final_total'=>$final],__('Cart DEtails'));

    }

    public function add($id){

        Cart::create([
            'quantity'=>1,
            'item_id'=>$id,
            'user_id'=>Auth::id()
        ]);

        return $this->okApiResponse([],__('Item added to cart'));
    }

    public function editQuantity(Request $request){
        if ($request->type == 'add'){
            $cart = Cart::where('item_id',$request->id)->where('user_id',Auth::id())->first();
            $cart->quantity +=1;
            $cart->save();
        }else{
            $cart = Cart::where('item_id',$request->id)->where('user_id',Auth::id())->first();
            $cart->quantity -=1;
            $cart->save();
        }
        if ($cart->quantity <= 0){
            $cart->delete();
        }
        return $this->okApiResponse([],__('Cart updated successfully'));
    }

    public function delete($id){
        Cart::where('item_id',$id)->delete();
        return $this->okApiResponse([],__('Item deleted from cart'));
    }

    public function pay(Request $request){

        $cart = Cart::where('user_id',Auth::id())->get();
        $total = 0;
        $deduct = 0;
        foreach ($cart as $one){
            $total += ($one->quantity * $one->item->final_price);
        }
        $vatPercent = option('vat')/100;
        $vatValue = $total * $vatPercent;

        $shipment = option('shipment') ?? 2; // TODO shipment cost

        if ($request->has('promocode')){
            $promocode = Promocode::where('code',$request->promocode)->where('from_date','<=',date('Y-m-d'))->where('to_date','>=',date('Y-m-d'))->first();
            if ($promocode && $promocode->to_use > $promocode->used){
                $deduct = ($promocode->percent/100) * $total ;
                $promocode->used = $promocode->used +1;
                $promocode->save();
            }

        }

        $final = $total+$vatValue+$shipment-$deduct;
        $paymentStatus =0;
        if ($request->payment_method == 'cash'){
            $paymentStatus = 1;
        }
        $order = Order::create([
            'user_id'=>Auth::id(),
            'address_id'=>$request->address_id,
            'vat'=>$vatValue,
            'coupon_id'=>$promocode->id ?? null,
            'discount'=>$deduct,
            'shipping'=>$shipment,
            'price'=>$total,
            'final_price'=>$final,
            'payment_method'=>$request->payment_method,
            'name'=>$request->name ?? Auth::user()->name,
            'mobile'=>$request->mobile ?? Auth::user()->mobile,
            'payment_status'=>$paymentStatus
        ]);

        foreach ($cart as $one){
            OrderDetail::create([
                'order_id'=>$order->id,
                'item_id'=>$one->item_id,
                'price'=>(float) $one->item->final_price,
                'quantity'=>$one->quantity
            ]);
        }

        Cart::where('user_id',Auth::id())->delete();
        $tokens = Token::where('user_id',Auth::id())->pluck('token')->toArray();
        if ($request->payment_method == 'cash'){
            $firebase = firebase_chat_notification('Chat',__('New cash order created #'.$order->id),$tokens,'FLUTTER_ORDER_CLICK',[
                'title' => 'New order',
                'message' => __('New cash order created #'.$order->id),
                'is_chat' =>  0,
                'order_id' => $order->id,
            ]);
            return $this->okApiResponse([new OrderResource($order)],__('Order created Successfully'));
        }

        return redirect()->route('make_payment',[
            'amount'=>$final,
            'order_id'=>$order->id,
            'email'=>Auth::user()->email,
            'name'=>Auth::user()->name,
            'mobile'=>Auth::user()->mobile
        ]);


    }

}
