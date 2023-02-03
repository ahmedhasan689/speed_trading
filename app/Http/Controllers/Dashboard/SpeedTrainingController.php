<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\SpeedTrainingRequest;
use App\Models\SpeedTraining;
use App\Models\SpeedTrainingImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SpeedTrainingController extends Controller
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

        $trainings = SpeedTraining::paginate(5);

        return view('dashboard.speed-trainings.index', compact('trainings'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $training = SpeedTraining::findOrFail($id);

        return view('dashboard.speed-trainings.show',compact('training'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $training=new SpeedTraining();
        return view('dashboard.speed-trainings.create',compact('training'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(SpeedTrainingRequest $request)
    {

        $requests = $request->all();

        $training = SpeedTraining::create($requests);
        if ($request->hasFile('image')) {
            $image = saveImage($request->image, 'images');
            SpeedTrainingImage::create(['url'=>$image,'training_id'=>$training->id,'type'=>'image']);
            $request->files->remove('image');
        }
        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.speed-trainings.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $training = SpeedTraining::findOrFail($id);

        return view('dashboard.speed-trainings.edit',compact('training'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, SpeedTrainingRequest $request)
    {

        $training = SpeedTraining::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $training->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.speed-trainings.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $training= SpeedTraining::findOrFail($id);
        $training->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
