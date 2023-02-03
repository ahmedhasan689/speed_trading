<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\FileRequest;
use App\Http\Requests\ItemRequest;
use App\Models\Item;
use App\Models\EventImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventImageController extends Controller
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

        $images = EventImage::where('event_id',$request->event_id)->paginate(5);

        return view('dashboard.event-images.index', compact('images'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        abort(404);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $image=new EventImage();
        return view('dashboard.event-images.create',compact('image'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(FileRequest $request)
    {

        $requests = $request->except('v_url');

        if ($request->type == 'image'){
            if ($request->hasFile('url')) {
                $requests['url'] = saveImage($request->url, 'images');
                $request->files->remove('url');
            }
        }else{
            $requests['url'] = $request->v_url;
        }

        $image = EventImage::create($requests);

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

        $image = EventImage::findOrFail($id);

        return view('dashboard.event-images.edit',compact('image'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, FileRequest $request)
    {

        $item = EventImage::findOrFail($id);
        $requests = $request->except('v_url');

        if ($request->type == 'image'){
            if ($request->hasFile('url')) {
                $requests['url'] = saveImage($request->url, 'images');
                $request->files->remove('url');
            }
        }else{
            $requests['url'] = $request->v_url;
        }

        $item->fill($requests)->save();
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

        $item= EventImage::findOrFail($id);
        $item->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
