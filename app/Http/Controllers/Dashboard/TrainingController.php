<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\TrainingRequest;
use App\Models\Training;
use App\Models\TrainingImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TrainingController extends Controller
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

        $trainings = Training::paginate(5);

        return view('dashboard.trainings.index', compact('trainings'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $training = Training::findOrFail($id);

        return view('dashboard.trainings.show',compact('training'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $training=new Training();
        return view('dashboard.trainings.create',compact('training'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(TrainingRequest $request)
    {

        $requests = $request->all();

        $training = Training::create($requests);
        if ($request->hasFile('image')) {
            $image = saveImage($request->image, 'images');
            TrainingImage::create(['url'=>$image,'training_id'=>$training->id,'type'=>'image']);
            $request->files->remove('image');
        }
        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.trainings.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $training = Training::findOrFail($id);

        return view('dashboard.trainings.edit',compact('training'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, TrainingRequest $request)
    {

        $training = Training::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $training->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.trainings.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $training= Training::findOrFail($id);
        $training->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
