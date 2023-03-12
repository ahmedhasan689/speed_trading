<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Favourite;
use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BrandsController extends Controller
{
    public function show(Request $request, $id)
    {
        $brand = Brand::findOrfail($id);

        $categories = Category::query()->where('upper_id', null)->get();
        $brands = Brand::query()->get();


        $items = Item::query()->tableFilters()->with(['images', 'brand'])->where('brand_id', $brand->id)->get();

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->pluck('favourable_id')->toArray();

        $cart = Cart::query()->where('user_id', Auth::id())->pluck('item_id')->toArray();


        if( $request->ajax() ) {
            return view('web.brand.items-card', compact('brand', 'items', 'categories','favorites', 'cart'))->render();
        }

        return view('web.brand.show', compact('brand', 'items', 'favorites', 'categories', 'brands', 'cart'));
    }
}
