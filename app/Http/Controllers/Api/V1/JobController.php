<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\ApiJobRequest;
use App\Http\Requests\BrandRequest;
use App\Http\Resources\BrandResource;
use App\Http\Resources\JobDetailResource;
use App\Http\Resources\JobResource;
use App\Models\Brand;
use App\Models\Job;
use App\Models\JobApplication;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;


class JobController extends Controller
{

    use ApiResponse;

    public function index(){

        $jobs = Job::paginate(10);

        return $this->okApiResponse(JobResource::collection($jobs)->response()->getData(true),__('Jobs loaded'));
    }

    public function show($id){

        $job = Job::findOrFail($id);

        return $this->okApiResponse(new JobDetailResource($job),__('Job loaded'));
    }

    public function apply(ApiJobRequest $request){

        $count = JobApplication::where('job_id',$request->job_id)->where('email',$request->email)->count();
        if ($count >0){
            return $this->badRequestApiResponse([],__('Can not apply for same job twice'));
        }
        $requests = $request->all();
            $requests['cv'] = saveImage($request->cv, 'cv');
        JobApplication::create($requests);
        return $this->okApiResponse([],__('Sent successfully'));
    }
}
