<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;

use App\Http\Resources\BankResource;
use App\Http\Resources\MainCategoryResource;
use App\Http\Resources\SubCategoryResource;
use App\Models\Bank;

use App\Models\Category;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class CategoryController extends Controller
{

    use ApiResponse;

    public function index(){


        $categories = Category::where('upper_id',null)->get();

        return $this->okApiResponse(MainCategoryResource::collection($categories),__('Main categories loaded'));
    }

    public function subCategories($id){
        $categories = Category::where('upper_id',$id)->get();

        return $this->okApiResponse(SubCategoryResource::collection($categories),__('Sub categories loaded'));
    }
}
