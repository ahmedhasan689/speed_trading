<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\ProviderRequest;
use App\Http\Requests\UserRequest;
use App\Http\Requests\VendorRequest;
use App\Models\City;
use App\Models\Nationality;
use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class VendorController extends Controller
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
    public function index(Request $request)
    {

        $vendors = User::where('main_role',User::ROLE_VENDOR)->orderBy('id','desc')->where(function($q)use($request){

            //Name filter on [name,middle_name,last_name]
            if ($request->has('name')  && $request->name != null  && $request->name != ''){
                $q->where('name','like', '%'.$request->name.'%');
            }

            //email filter
            if ($request->has('email')  && $request->email != null  && $request->email != ''){
                $q->where('email','like', '%'.$request->email.'%');
            }

            //status filter
            if ($request->has('status')  && $request->status != null  && $request->status != ''){
                $q->where('status',$request->status);
            }

            //mobile filter
            if ($request->has('mobile')  && $request->mobile != null  && $request->mobile != ''){
                $q->where('mobile','like', '%'.$request->mobile.'%');
            }

//            //city filter
//            if ($request->has('city_id')  && $request->city_id != null  && $request->city_id != ''){
//                $q->where('city_id',$request->city_id);
//            }

        })->paginate(10);
        $cities = City::all()->pluck('name','id');
        return view('dashboard.vendors.index', compact('vendors','cities'));
    }

    public function indexArchive(Request $request)
    {

        $vendors = User::where('main_role',User::ROLE_VENDOR)->onlyTrashed()->orderBy('id','desc')->where(function($q)use($request){

            //Name filter on [name,middle_name,last_name]
            if ($request->has('name')  && $request->name != null  && $request->name != ''){
                $q->where('name','like', '%'.$request->name.'%')->orWhere('middle_name','like', '%'.$request->name.'%');
            }

            //email filter
            if ($request->has('email')  && $request->email != null  && $request->email != ''){
                $q->where('email','like', '%'.$request->email.'%');
            }



            //phone filter
            if ($request->has('phone')  && $request->phone != null  && $request->phone != ''){
                $q->where('phone','like', '%'.$request->phone.'%');
            }

            //city filter
            if ($request->has('city_id')  && $request->city_id != null  && $request->city_id != ''){
                $q->where('city_id',$request->city_id);
            }


        })->paginate(10);
        $cities = City::all()->pluck('name','id');
        return view('dashboard.vendors.index-archive', compact('vendors','cities'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $vendor=new User();
        return view('dashboard.vendors.create',compact('vendor'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(VendorRequest $request)
    {
        $requests= $request->all();
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }
        if ($request->hasFile('id_image')) {
            $requests['id_image'] = saveImage($request->id_image, 'images');
            $request->files->remove('id_image');
        }
        if ($request->hasFile('driving_license_image')) {

            $requests['driving_license_image'] = saveImage($request->driving_license_image, 'images');
            $request->files->remove('driving_license_image');
        }
        if ($request->hasFile('working_license_image')) {

            $requests['working_license_image'] = saveImage($request->working_license_image, 'images');
            $request->files->remove('working_license_image');
        }
        $requests['status']=User::STATUS_ACTIVE;
        $requests['main_role']=User::ROLE_VENDOR;
        $requests['password']=Hash::make($request->password);
        $vendor = User::create($requests);

        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.vendors.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $vendor = User::findOrFail($id);

        return view('dashboard.vendors.show',compact('vendor'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $vendor = User::findOrFail($id);

        return view('dashboard.vendors.edit',compact('vendor'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id,VendorRequest $request)
    {

        $requests=$request->all();

        if ($request->hasFile('image')) {

            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }
        if ($request->hasFile('id_image')) {

            $requests['id_image'] = saveImage($request->id_image, 'images');
            $request->files->remove('id_image');
        }
        if ($request->hasFile('driving_license_image')) {

            $requests['driving_license_image'] = saveImage($request->driving_license_image, 'images');
            $request->files->remove('driving_license_image');
        }
        if ($request->hasFile('working_license_image')) {

            $requests['working_license_image'] = saveImage($request->working_license_image, 'images');
            $request->files->remove('working_license_image');
        }
        if(!is_null($request->password)){
            $requests['password']=Hash::make($request->password);
        }else{
            unset($requests['password']);
        }
        $vendor = User::find($id);
        $vendor->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.vendors.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        $vendor= User::findOrFail($id);
        $vendor->delete();
        toast(__('Deleted successfully'),'success');
        return redirect(route('dashboard.vendors.index'));
    }



    /**
     * Suspend user
     *
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */

    public function suspend($id)
    {
        $user= User::findOrFail($id);
        switch ($user->status) {
            case  User::STATUS_ACTIVE;
                $user->update(['status'=>User::STATUS_SUSPEND]);
    break;
            case  User::STATUS_SUSPEND;
                $user->update(['status'=>User::STATUS_ACTIVE]);
    break;

        }
        toast(__('Status changed successfully'),'success');
        return redirect()->back();

    }

    /**
     * Approve user
     *
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */

    public function approve($id)
    {
        $vendor= User::findOrFail($id);
        $vendor->update(['status'=>User::STATUS_ACTIVE]);
        toast(__('Changed successfully'),'success');
        return redirect()->back();

    }

    /**
     * Disapprove user
     *
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */

    public function disapprove($id)
    {
        $vendor= User::findOrFail($id);
        $vendor->update(['status'=>User::STATUS_REJECTED]);
        toast(__('Changed successfully'),'success');
        return redirect()->back();

    }


    /**
     * Restore user
     *
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function restore($id)
    {

        $user = User::withTrashed()->find($id)->restore();
        toast(__('Restored successfully'),'success');
        return redirect(route('dashboard.vendors.index'));
    }

}

?>
