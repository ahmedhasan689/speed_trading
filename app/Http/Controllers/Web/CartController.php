<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Favourite;
use App\Models\Item;
use App\Models\Promocode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function index(Request $request)
    {
        $cart = Cart::where('user_id', Auth::id())->get();

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->get();

        if( $request->ajax() ) {
            return view('web.cart.cart_details', compact('cart', 'favorites'))->render();
        }

        return view('web.cart.index', compact('cart', 'favorites'));
    }

    public function store($id)
    {
        $cart = Cart::query()->where('item_id', $id)->where('user_id', Auth::id())->first();

        if( !$cart ) {
            Cart::create([
                'quantity'=> 1,
                'item_id'=> $id,
                'user_id'=> Auth::id(),
            ]);
        }else{
            $cart->increment('quantity');
        }

        return redirect()->route('cart.index');
    }

    public function getItem(Request $request)
    {
        $item = Item::findOrFail($request->id);

        return response()->json([
            'item' => $item,
        ]);
    }

    public function lossQuantity(Request $request)
    {
        $cart = Cart::query()->where('item_id', $request->id)->where('user_id', Auth::id())->first();

        $cart->decrement('quantity', 1);

    }

    public function destroy(Request $request)
    {
        $cart = Cart::where('item_id', $request->id)->where('user_id', Auth::id())->first();

        $cart->delete();
    }

}
