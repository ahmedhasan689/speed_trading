<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Event;
use App\Models\Favourite;
use App\Models\Item;
use App\Models\Slider;
use App\Models\Solution;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $data['sliders'] = Slider::all();
        $data['brands'] = Brand::all();
        $data['items'] = Item::query()->with('brand', function($query) {
            $query->whereNull('deleted_at');
        })->whereHas('images')->whereNotNull('price')->orderBy('created_at')->limit(6)->get();

        $data['favorites'] = Favourite::query()->with(['user', 'favourable'])->where('user_id', Auth::id())->pluck('favourable_id')->toArray();

        $data['solutions'] = Solution::query()->limit(4)->get();

        $data['events'] = Event::query()->get();

        if( $request->ajax() ) {
            return view('web.home.items_card', $data)->render();
        }

        return view('web.index', $data);
    }

}
