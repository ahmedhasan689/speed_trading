<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MyPointController extends Controller
{
    public function index()
    {
        $points = User::query()->where('id', Auth::id())->first();
        return view('web.my_point.index', compact('points'));
    }
}
