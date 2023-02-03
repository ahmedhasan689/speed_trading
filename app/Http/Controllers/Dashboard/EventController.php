<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\EventRequest;
use App\Models\Event;
use App\Models\EventImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventController extends Controller
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
    public function index()
    {

        $events = Event::paginate(5);

        return view('dashboard.events.index', compact('events'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $event = Event::findOrFail($id);

        return view('dashboard.events.show',compact('event'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $event=new Event();
        return view('dashboard.events.create',compact('event'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(EventRequest $request)
    {

        $requests = $request->all();

        $event = Event::create($requests);
        if ($request->hasFile('image')) {
            $image = saveImage($request->image, 'images');
            EventImage::create(['url'=>$image,'event_id'=>$event->id,'type'=>'image']);
            $request->files->remove('image');
        }
        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.events.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $event = Event::findOrFail($id);

        return view('dashboard.events.edit',compact('event'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, EventRequest $request)
    {

        $event = Event::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $event->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.events.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $event= Event::findOrFail($id);
        $event->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
