<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\CityResource;
use App\Models\City;
use App\Traits\ApiResponse;

class CityController extends Controller
{

    use ApiResponse;

    public function governorates(){

        $cities = City::where('upper_id',null)->get();

        return $this->okApiResponse(CityResource::collection($cities),__('Governorates loaded'));
    }

    public function cities($id){

        $cities = City::where('upper_id',$id)->get();

        return $this->okApiResponse(CityResource::collection($cities),__('Cities loaded'));
    }
}
