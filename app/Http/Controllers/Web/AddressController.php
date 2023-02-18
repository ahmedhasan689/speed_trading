<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Models\City;
use Auth;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class AddressController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Application|Factory|View
     */
    public function index(Request $request)
    {
        $addresses = Address::query()->where('user_id', Auth::id())->get();

        $cities = City::query()->get();

        if( $request->ajax() ) {
            return view('web.address.address-card', compact('addresses', 'cities'))->render();
        }

        return view('web.address.index', compact('addresses', 'cities'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $request->validate([
            'address' => 'required',
            'name' => 'required',
            'lat' => 'required',
            'lng' => 'required',
            'city_id' => 'required|exists:cities,id',
        ]);

        Address::create([
            'address' => $request->address,
            'name' => $request->name,
            'lat' => $request->lat,
            'lng' => $request->lng,
            'city_id' => $request->city_id,
            'user_id' => Auth::id(),
            'is_primary' => $request->primary,
        ]);

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        $address = Address::query()->findOrFail($request->id);

        $request->validate([
            'address' => 'required',
            'name' => 'required',
            'lat' => 'required',
            'lng' => 'required',
            'city_id' => 'required|exists:cities,id',
        ]);

        $address->update([
            'address' => $request->address,
            'name' => $request->name,
            'lat' => $request->lat,
            'lng' => $request->lng,
            'city_id' => $request->city_id,
            'user_id' => Auth::id(),
            'is_primary' => $request->primary,
        ]);

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $address = Address::query()->findOrFail($request->id)->delete();
    }
}
