<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\JobRequest;
use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JobController extends Controller
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

        $jobs = Job::paginate(10);

        return view('dashboard.jobs.index', compact('jobs'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $job = Job::findOrFail($id);

        return view('dashboard.jobs.show',compact('job'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $job=new Job();
        return view('dashboard.jobs.create',compact('job'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(JobRequest $request)
    {

        //return $request->all();
        $job = Job::create($request->all());

        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.jobs.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $job = Job::findOrFail($id);

        return view('dashboard.jobs.edit',compact('job'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, JobRequest $request)
    {
        $job = Job::findOrFail($id);
        $job->update($request->all());
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.jobs.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $job= Job::findOrFail($id);
        $job->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
