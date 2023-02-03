<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;


use App\Http\Resources\EventResource;
use App\Models\Event;
use App\Models\EventReservation;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventController extends Controller
{

    use ApiResponse;

    public function index(Request $request){
        $list =  Event::where(function ($q) use($request){


           if($request->has('type') && $request->type != null && $request->type != ''){
               if ($request->type == 'finished'){
                   $q->where('date','<' ,date('Y-m-d'));
               }else{
                   $q->where('date','>=' ,date('Y-m-d'));
               }

           }
        });

            $list = $list->paginate(10);
        return $this->okApiResponse(EventResource::collection($list),__("Event list"));

    }


    public function show($id){

        $event = Event::findOrFail($id);

        return $this->okApiResponse(new EventResource($event),__("Show  event"));

    }

    public function reserve($id){

        $event = Event::findOrFail($id);

        $count = EventReservation::where('event_id',$event->id)->where('user_id',Auth::id())->count();
        if ($count >0){
            return $this->badRequestApiResponse([],__('Can not apply for same event twice'));
        }
        $reservation = EventReservation::create([
            'event_id'=>$event->id,
            'user_id'=>Auth::id()
        ]);

        return $this->okApiResponse([],__("Reservation done"));

    }

}
