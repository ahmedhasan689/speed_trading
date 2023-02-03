<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\OrderRequest;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {

        $orders = Order::orderBy('id','desc')->where(function($q)use($request){
            if ($request->has('status')  && $request->status != '' && $request->status != null){
                $q->where('status',$request->status);
            }
            if ($request->has('user_id')  && $request->user_id != '' && $request->user_id != null){
                $q->where('user_id',$request->user_id);
            }
        })->paginate(10);

        return view('dashboard.orders.index', compact('orders'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $order = Order::findOrFail($id);
        $details = $order->details;

        return view('dashboard.orders.show',compact('order','details'));
    }


    public function confirmed($id)
    {
        $order = Order::findOrFail($id);
//        $order->status = 'confirmed';
        $order->confirmed_at = date('Y-m-d H:i:s');
        $order->save();
        toast(__('Order confirmed successfully'),'success');
        return redirect()->back();
    }

    public function shipping($id)
    {
        $order = Order::findOrFail($id);
//        $order->status = 'shipping';
        $order->shipping_at = date('Y-m-d H:i:s');
        $order->save();
        toast(__('Order shipping successfully'),'success');
        return redirect()->back();
    }
//    public function delivered($id)
//    {
//        $order = Order::findOrFail($id);
////        $order->status = 'delivered';
//        $order->delivered_at = date('Y-m-d H:i:s');
//        $order->save();
//        toast(__('Order delivered successfully'),'success');
//        return redirect()->back();
//    }
    public function cancelled($id)
    {
        $order = Order::findOrFail($id);
//        $order->status = 'cancelled';
        $order->cancelled_at = date('Y-m-d H:i:s');
        $order->save();
        toast(__('Order cancelled successfully'),'success');
        return redirect()->back();
    }
    public function finished($id)
    {
        $order = Order::findOrFail($id);
//        $order->status = 'finished';
        $order->delivered_at = date('Y-m-d H:i:s');
        $order->save();
        toast(__('Order finished successfully'),'success');
        return redirect()->back();
    }



}
