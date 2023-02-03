<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Models\TrainingReservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TrainingReservationController extends Controller
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

        $trainings = TrainingReservation::where(function ($q) use($request){
            //filter by name
            if ($request->has('name') && $request->name != '') {
                $q->whereHas('user', function ($q) use($request) {
                    $q->where('name', 'like', '%' . $request->name . '%');
                });
            }
            //filter by job_id
            if($request->has('training_id') && $request->training_id != ''){
                $q->where('training_id',$request->training_id);
            }
        })->paginate(5);

        return view('dashboard.training-reservations.index', compact('trainings'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $training = TrainingReservation::findOrFail($id);

        return view('dashboard.training-reservations.show',compact('training'));
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $training = TrainingReservation::findOrFail($id);

        return view('dashboard.training-reservations.edit',compact('training'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, Request $request)
    {

        $training = TrainingReservation::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $training->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.training-reservations.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $training= TrainingReservation::findOrFail($id);
        $training->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
