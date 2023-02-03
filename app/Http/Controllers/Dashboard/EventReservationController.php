<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Models\EventReservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventReservationController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {

        $events = EventReservation::where(function ($q) use($request){
            //filter by name
            if ($request->has('name') && $request->name != '') {
                $q->whereHas('user', function ($q) use($request) {
                    $q->where('name', 'like', '%' . $request->name . '%');
                });
            }
            //filter by job_id
            if($request->has('event_id') && $request->event_id != ''){
                $q->where('event_id',$request->event_id);
            }
        })->paginate(5);

        return view('dashboard.event-reservations.index', compact('events'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $event = EventReservation::findOrFail($id);

        return view('dashboard.event-reservations.show',compact('event'));
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $event = EventReservation::findOrFail($id);

        return view('dashboard.event-reservations.edit',compact('event'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, Request $request)
    {

        $event = EventReservation::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $event->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.event-reservations.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $event= EventReservation::findOrFail($id);
        $event->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
