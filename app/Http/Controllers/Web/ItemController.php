<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Favourite;
use App\Models\Item;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class ItemController extends Controller
{
    /**
     * @param Request $request
     * @param $id
     * @return Application|Factory|View|string
     */
    public function show(Request $request, $id)
    {
        // Get Item
        $item = Item::query()->with(['images', 'rates'])->findOrFail($id);

        $favorites = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->pluck('favourable_id')->toArray();


        if ( $request->ajax() ) {
            return view('web.item.item_details', compact('item', 'favorites'))->render();
        }

        return view('web.item.show', compact('item', 'favorites'));
    }

    public function compare($id)
    {
        // Get Item
        $item = Item::query()->with(['images', 'rates'])->findOrFail($id);

        $compare_items = Item::where('brand_id', $item->brand->id)->limit(3)->get();

        return view('web.item.compare', compact('item', 'compare_items'));
    }

    /**
     * @param Request $request
     * @return BinaryFileResponse
     */
    public function download(Request $request)
    {
        return Response::download(public_path() . '/' . $request->file, 'user_manual.pdf');
    }
}
