<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;


use App\Http\Resources\RoomResource;
use App\Models\Room;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RoomController extends Controller
{

    use ApiResponse;

    public function index(){
        $list =  Room::paginate(10);
        return $this->okApiResponse(RoomResource::collection($list),__("Room list"));

    }


    public function show($id){

        $room = Room::findOrFail($id);

        return $this->okApiResponse(new RoomResource($room),__("Show  room"));

    }

}
