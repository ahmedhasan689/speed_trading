<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\SolutionRequest;
use App\Models\Solution;
use App\Models\SolutionImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SolutionController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $solutions = Solution::paginate(5);

        return view('dashboard.solutions.index', compact('solutions'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $solution = Solution::findOrFail($id);

        return view('dashboard.solutions.show',compact('solution'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $solution=new Solution();
        return view('dashboard.solutions.create',compact('solution'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(SolutionRequest $request)
    {

        $requests = $request->except('items');

        $solution = Solution::create($requests);
        if ($request->hasFile('image')) {
            $image = saveImage($request->image, 'images');
            SolutionImage::create(['url'=>$image,'solution_id'=>$solution->id,'type'=>'image']);
            $request->files->remove('image');
        }
        $solution->items()->sync($request->items);
        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.solutions.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $solution = Solution::findOrFail($id);

        return view('dashboard.solutions.edit',compact('solution'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, SolutionRequest $request)
    {

        $solution = Solution::findOrFail($id);
        $requests = $request->except('items');
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }

        $solution->fill($requests)->save();
        $solution->items()->sync($request->items);

        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.solutions.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $solution= Solution::findOrFail($id);
        $solution->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
