<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\BrandRequest;
use App\Http\Resources\BrandResource;
use App\Models\Brand;
use App\Traits\ApiResponse;


class BrandController extends Controller
{

    use ApiResponse;

    public function index(){

        $brands = Brand::all();

        return $this->okApiResponse(BrandResource::collection($brands),__('Brands loaded'));
    }
}
