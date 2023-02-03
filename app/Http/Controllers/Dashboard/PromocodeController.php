<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\PromocodeRequest;
use App\Models\Promocode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PromocodeController extends Controller
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

        $promocodes = Promocode::paginate(5);

        return view('dashboard.promocodes.index', compact('promocodes'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $promocode = Promocode::findOrFail($id);

        return view('dashboard.promocodes.show',compact('promocode'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $promocode=new Promocode();
        return view('dashboard.promocodes.create',compact('promocode'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(PromocodeRequest $request)
    {

        $requests = $request->all();
        $promocode = Promocode::create($requests);

        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.promocodes.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $promocode = Promocode::findOrFail($id);

        return view('dashboard.promocodes.edit',compact('promocode'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, PromocodeRequest $request)
    {

        $promocode = Promocode::findOrFail($id);
        $requests = $request->all();


        $promocode->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.promocodes.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $promocode= Promocode::findOrFail($id);
        $promocode->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
