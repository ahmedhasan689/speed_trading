<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\RoomRequest;
use App\Models\Room;
use App\Models\RoomImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RoomController extends Controller
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

        $rooms = Room::paginate(5);

        return view('dashboard.rooms.index', compact('rooms'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $room = Room::findOrFail($id);

        return view('dashboard.rooms.show',compact('room'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $room=new Room();
        return view('dashboard.rooms.create',compact('room'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(RoomRequest $request)
    {

        $requests = $request->all();

        $room = Room::create($requests);
        if ($request->hasFile('image')) {
            $image = saveImage($request->image, 'images');
            RoomImage::create(['url'=>$image,'room_id'=>$room->id,'type'=>'image']);
            $request->files->remove('image');
        }
        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.rooms.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $room = Room::findOrFail($id);

        return view('dashboard.rooms.edit',compact('room'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, RoomRequest $request)
    {

        $room = Room::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $room->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.rooms.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $room= Room::findOrFail($id);
        $room->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
