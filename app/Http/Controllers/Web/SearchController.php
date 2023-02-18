<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
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

        // Search in the title and body columns from the posts table
        $items = Item::query()
            ->where('name', 'LIKE', "%{$search}%")
            ->get();

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->pluck('favourable_id')->toArray();


        if( $request->ajax() ) {
            return view('web.search.items-card', compact('items', 'favorites'))->render();
        }

        // Return the search view with the resluts compacted
        return view('web.search.index', compact('items', 'favorites', 'search'));
    }
}
