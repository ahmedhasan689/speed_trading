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

class SearchController extends Controller
{
    public function search(Request $request)
    {
        // Get the search value from the request
        $search = $request->search;

        $categories = Category::query()->where('upper_id', null)->get();
        $brands = Brand::query()->get();

        // Search in the title and body columns from the posts table
        $items = Item::query()->tableFilters()
            ->where('name', 'LIKE', "%{$search}%")
            ->get();

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->pluck('favourable_id')->toArray();

        $cart = Cart::query()->where('user_id', Auth::id())->pluck('item_id')->toArray();

        if( $request->ajax() ) {
            return view('web.search.items-card', compact('items', 'favorites', 'categories', 'brands', 'cart'))->render();
        }

        // Return the search view with the resluts compacted
        return view('web.search.index', compact('items', 'favorites', 'search', 'categories', 'brands', 'cart'));
    }
}
