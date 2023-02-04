<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MyFavoriteController extends Controller
{
    public function index()
    {
        return view('web.my_favorite.index');
    }
}
