<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Job;
use App\Models\JobApplication;
use Illuminate\Http\Request;

class JobsController extends Controller
{
    public function index()
    {
        $jobs = Job::query()->get();
        $cities = City::query()->get();

        $governorates = City::with('cities')->whereNull('upper_id')->get();



        return view('web.job.index', compact('jobs', 'governorates'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required|numeric',
            'email' => 'required|email',
            'age' => 'required|numeric',
            'city_id' => 'required|exists:cities,id',
            'degree' => 'required',
            'cv' => 'required',
        ]);

        $requests = $request->all();
        $requests['cv'] = saveImage($request->cv, 'cv');

        JobApplication::create($requests);
        toastr()->success('تم التقدم للوظيفة بنجاح');


        return redirect()->back();
    }

    public function getJob(Request $request)
    {
        $job = Job::query()->findOrFail($request->id);

        $description = $job->getTranslation( 'description', 'ar');
        $separate_description = explode('/', $description);
        return response()->json([
            'job' => $job,
            'description' => $separate_description,
        ]);
    }
}
