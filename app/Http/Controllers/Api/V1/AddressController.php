<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\AddressRequest;
use App\Http\Requests\BrandRequest;
use App\Http\Resources\AddressResource;
use App\Http\Resources\BrandResource;
use App\Models\Address;
use App\Models\Brand;
use App\Traits\ApiResponse;
use Illuminate\Support\Facades\Auth;


class AddressController extends Controller
{

    use ApiResponse;

    public function index(){

        $addresses = Address::where('user_id',Auth::id())->get();

        return $this->okApiResponse(AddressResource::collection($addresses),__('Addresses loaded'));
    }

    public function create(AddressRequest $request){
        $requests = $request->all();
        $requests['user_id']= Auth::id();
        if ($request->is_primary == 1){
            Address::where('user_id',Auth::id())->update(['is_primary'=>0]);
        }
        $address = Address::create($requests);
        return $this->createdApiResponse([],__("Created successfully"));

    }

    public function edit(AddressRequest $request,$id){
        $requests = $request->all();
        $address = Address::find($id);
        if ($request->is_primary == 1){
            Address::where('user_id',Auth::id())->update(['is_primary'=>0]);
        }

        $address->update($requests);
        return $this->okApiResponse([],__("Edited successfully"));

    }

    public function delete($id){
        $address = Address::find($id);
        $address->delete();
        return $this->okApiResponse([],__("Address deleted"));

    }
}
