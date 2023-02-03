<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\CityRequest;
use App\Models\City;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class GovernorateController extends Controller
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

        $governorates = City::where('upper_id',null)->paginate(5);

        return view('dashboard.governorates.index', compact('governorates'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $governorate = City::findOrFail($id);

        return view('dashboard.governorates.show',compact('governorate'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $governorate=new City();
        return view('dashboard.governorates.create',compact('governorate'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(CityRequest $request)
    {

        //return $request->all();
        $governorate = City::create($request->all());

        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.governorates.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $governorate = City::findOrFail($id);

        return view('dashboard.governorates.edit',compact('governorate'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, CityRequest $request)
    {
        $governorate = City::findOrFail($id);
        $governorate->update($request->all());
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.governorates.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $governorate= City::findOrFail($id);
        $governorate->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
