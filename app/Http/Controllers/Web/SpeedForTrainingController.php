<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\SpeedTraining;
use App\Models\SpeedTrainingReservation;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SpeedForTrainingController extends Controller
{
    public function index()
    {
        $prev_training = SpeedTraining::query()->where('date', '<', Carbon::now())->get();

        $next_training = SpeedTraining::query()->where('date', '>=', Carbon::now())->get();

        return view('web.speed_training.index', compact('prev_training', 'next_training'));
    }

    public function show($id)
    {
        $training = SpeedTraining::query()->findOrFail($id);

        return view('web.speed_training.show', compact('training'));
    }

    public function reservation(Request $request)
    {
        $speed_training = SpeedTraining::where('id', $request->id)->first();

        if( SpeedTrainingReservation::where('speed_training_id', $speed_training->id)->where('user_id', Auth::id())->exists() ){
            return response()->json([
                'error' => 'Error',
            ]);
        }

        SpeedTrainingReservation::create([
            'user_id' => Auth::id(),
            'speed_training_id' => $speed_training->id,
        ]);
    }
}
