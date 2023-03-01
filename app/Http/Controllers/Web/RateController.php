<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Rate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RateController extends Controller
{
    public function store(Request $request)
    {
        Rate::create([
            'item_id' => $request->item_id,
            'user_id' => Auth::id(),
            'order_id' => $request->order_id,
            'rate' => $request->rate,
            'comment' => $request->comment,
        ]);

    }
}
