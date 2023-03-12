<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Training;
use App\Models\TrainingReservation;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class TrainingController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function index()
    {
        $trainings = Training::query()->get();

        return view('web.training.index', compact('trainings'));
    }

    /**
     * @param $id
     * @return Application|Factory|View
     */
    public function show($id)
    {
        $training = Training::query()->findOrFail($id);

        return view('web.training.show', compact('training'));
    }

    public function reservation(Request $request)
    {
        $training = Training::query()->where('id', $request->id)->first();

        if( TrainingReservation::where('training_id', $training->id)->where('user_id', Auth::id())->exists() ){
            return response()->json([
                'error' => 'Error',
            ]);
        }

        TrainingReservation::create([
            'user_id' => Auth::id(),
            'training_id' => $training->id,
        ]);
    }
}
