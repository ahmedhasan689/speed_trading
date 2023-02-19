<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Favourite;
use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoriesController extends Controller
{
    public function show(Request $request, $id)
    {
        $category = Category::findOrfail($id);

        $categories = Category::query()->where('upper_id', null)->get();
        $brands = Brand::query()->get();


        $items = Item::query()->tableFilters()->with(['images', 'brand'])->whereHas('category', function($query) use ($category) {
            $query->whereIn('id', $category->subs->pluck('id'));
        })->get();

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->pluck('favourable_id')->toArray();

        if( $request->ajax() ) {
            return view('web.category.items-card', compact('category', 'categories', 'items', 'favorites'))->render();
        }

        return view('web.category.show', compact('category', 'items', 'favorites', 'categories', 'brands'));

    }
}
