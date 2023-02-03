<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\JobApplicationRequest;
use App\Models\JobApplication;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JobApplicationController extends Controller
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

        $applications = JobApplication::where(function ($q) use($request){
            //filter by name
            if($request->has('name') && $request->name != ''){
                $q->where('name','like','%'.$request->name.'%');
            }

            //filter by job_id
            if($request->has('job_id') && $request->job_id != ''){
                $q->where('job_id',$request->job_id);
            }
        })->orderByDesc('id')->paginate(10);

        return view('dashboard.job-applications.index', compact('applications'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $application = JobApplication::findOrFail($id);

        return view('dashboard.job-applications.show',compact('application'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $application=new JobApplication();
        return view('dashboard.job-applications.create',compact('application'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(JobApplicationRequest $request)
    {

        //return $request->all();
        $application = JobApplication::create($request->all());

        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.job-applications.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $application = JobApplication::findOrFail($id);

        return view('dashboard.job-applications.edit',compact('application'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, JobApplicationRequest $request)
    {
        $application = JobApplication::findOrFail($id);
        $application->update($request->all());
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.job-applications.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $application= JobApplication::findOrFail($id);
        $application->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
