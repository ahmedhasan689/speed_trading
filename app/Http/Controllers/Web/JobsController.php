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

        return view('web.job.index', compact('jobs', 'cities'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required|numeric',
            'email' => 'required|email',
            'age' => 'required|numeric',
            'city_id' => 'required|exists:cities,id',
            'cv' => 'required',
        ]);

        JobApplication::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'age' => $request->age,
            'city_id' => $request->city_id,
            'cv' => $request->cv,
            'job_id' => $request->job_id,
        ]);

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
