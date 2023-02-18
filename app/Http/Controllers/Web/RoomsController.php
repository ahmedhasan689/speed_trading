<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Room;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class RoomsController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function index()
    {
        $rooms = Room::query()->get();

        return view('web.rooms.index', compact('rooms'));
    }

    /**
     * @param $id
     * @return Application|Factory|View
     */
    public function show($id)
    {
        $room = Room::query()->findOrFail($id);

        return view('web.rooms.show', compact('room'));
    }
}
