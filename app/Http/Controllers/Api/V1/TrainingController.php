<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;


use App\Http\Resources\TrainingResource;
use App\Models\Training;
use App\Models\TrainingReservation;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TrainingController extends Controller
{

    use ApiResponse;

    public function index(Request $request){
        $list =  Training::where(function ($q) use($request){


           if($request->has('type') && $request->type != null && $request->type != ''){
               if ($request->type == 'finished'){
                   $q->where('date','<' ,date('Y-m-d'));
               }else{
                   $q->where('date','>=' ,date('Y-m-d'));
               }

           }
        });

            $list = $list->paginate(10);
        return $this->okApiResponse(TrainingResource::collection($list),__("Training list"));

    }


    public function show($id){

        $training = Training::findOrFail($id);

        return $this->okApiResponse(new TrainingResource($training),__("Show  training"));

    }

    public function reserve($id){

        $training = Training::findOrFail($id);
        $count = TrainingReservation::where('training_id',$training->id)->where('user_id',Auth::id())->count();
        if ($count >0){
            return $this->badRequestApiResponse([],__('Can not apply for same training twice'));
        }
        $reservation = TrainingReservation::create([
            'training_id'=>$training->id,
            'user_id'=>Auth::id()
        ]);

        return $this->okApiResponse([],__("Reservation done"));

    }
}
