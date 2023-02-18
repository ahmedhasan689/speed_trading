<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Solution;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class SolutionController extends Controller
{
    /**
     * @param Request $request
     * @return Application|Factory|View|string
     */
    public function index(Request $request)
    {
        $solutions = Solution::query()->with(['items', 'images'])->get();

        $single_solution = Solution::query()->with(['items', 'images'])->first();

        if( $request->ajax() ) {
            return view('web.solution.content', compact('solutions', 'single_solution'))->render();
        }

        return view('web.solution.index', compact('solutions', 'single_solution'));
    }

    public function getSolution(Request $request)
    {
        $solution = Solution::query()->with('images')->with('items', function($query) {

            $query->with(['brand']);
        })->findOrFail($request->id);

        $separate_text = explode(PHP_EOL, $solution->getTranslation('content', 'en'));

        return response()->json([
            'solution' => $solution,
            'separate_text' => $separate_text,
        ]);
    }
}
