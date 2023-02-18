<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Favourite;
use App\Models\Promocode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function index(Request $request)
    {
        $cart = Cart::where('user_id', Auth::id())->get();

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->get();

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


}
