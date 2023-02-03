<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;


use App\Http\Resources\SpeedTrainingResource;
use App\Models\SpeedTraining;
use App\Models\SpeedTrainingReservation;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SpeedTrainingController extends Controller
{

    use ApiResponse;

    public function index(Request $request){
        $list =  SpeedTraining::where(function ($q) use($request){


           if($request->has('type') && $request->type != null && $request->type != ''){
               if ($request->type == 'finished'){
                   $q->where('date','<' ,date('Y-m-d'));
               }else{
                   $q->where('date','>=' ,date('Y-m-d'));
               }

           }
        });

            $list = $list->paginate(10);
        return $this->okApiResponse(SpeedTrainingResource::collection($list),__("Training list"));

    }


    public function show($id){

        $training = SpeedTraining::findOrFail($id);

        return $this->okApiResponse(new SpeedTrainingResource($training),__("Show speed training"));

    }


    public function reserve($id){

        $training = SpeedTraining::findOrFail($id);


        $count = SpeedTrainingReservation::where('speed_training_id',$training->id)->where('user_id',Auth::id())->count();
        if ($count >0){
            return $this->badRequestApiResponse([],__('Can not apply for same training twice'));
        }


        $reservation = SpeedTrainingReservation::create([
            'speed_training_id'=>$training->id,
            'user_id'=>Auth::id()
        ]);

        return $this->okApiResponse([],__("Reservation done"));

    }
}
