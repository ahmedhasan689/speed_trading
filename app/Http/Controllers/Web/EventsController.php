<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Models\EventReservation;
use Carbon\Carbon;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventsController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function index()
    {
        $prev_events = Event::query()->where('date', '<', Carbon::now())->get();

        $next_events = Event::query()->where('date', '>=', Carbon::now())->get();

        return view('web.event.index', compact('prev_events', 'next_events'));
    }

    /**
     * @param $id
     * @return Application|Factory|View
     */
    public function show($id)
    {
        $event = Event::query()->findOrFail($id);

        return view('web.event.show', compact('event'));
    }

    public function reservation(Request $request)
    {
        $event = Event::where('id', $request->id)->first();

        if( EventReservation::where('event_id', $event->id)->where('user_id', Auth::id())->exists() ){
            return response()->json([
                'error' => 'Error',
            ]);
        }

        EventReservation::create([
            'user_id' => Auth::id(),
            'event_id' => $event->id,
        ]);
    }

}
