<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Training;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

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
}
