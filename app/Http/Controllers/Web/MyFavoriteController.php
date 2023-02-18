<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Favourite;
use App\Models\Item;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MyFavoriteController extends Controller
{
    public function index(Request $request)
    {
        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->get();

        if( $request->ajax() ) {
            return view('web.my_favorite.items-card', compact('favorites'))->render();
        }

        return view('web.my_favorite.index', compact('favorites'));
    }

    /**
     * @param Request $request
     * @return RedirectResponse
     */
    public function store(Request $request)
    {
        $item = Item::query()->findOrFail($request->id);

        Favourite::create([
            'favourable_id' => $item->id,
            'user_id' => Auth::id(),
            'favourable_type' => 'App\Models\Item',
        ]);

        return redirect()->back();
    }

    /**
     * @param Request $request
     * @return RedirectResponse
     */
    public function destroy(Request $request)
    {
        $favorite = Favourite::query()->where('favourable_id', $request->id)
            ->where('user_id', Auth::id())
            ->first()
            ->delete();

        return redirect()->back();
    }
}
