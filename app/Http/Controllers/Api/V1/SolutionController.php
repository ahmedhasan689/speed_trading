<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;


use App\Http\Resources\SolutionResource;
use App\Models\Solution;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SolutionController extends Controller
{

    use ApiResponse;

    public function index(){
        $list =  Solution::paginate(10);
        return $this->okApiResponse(SolutionResource::collection($list),__("Solution list"));

    }


    public function show($id){

        $solution = Solution::findOrFail($id);

        return $this->okApiResponse(new SolutionResource($solution),__("Show  solution"));

    }

}
