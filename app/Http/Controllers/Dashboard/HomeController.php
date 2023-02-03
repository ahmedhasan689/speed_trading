<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProfileRequest;
use App\Http\Requests\UserRequest;

use App\Models\Administrator;
use App\Models\Category;
use App\Models\Event;
use App\Models\Item;
use App\Models\Job;
use App\Models\Room;
use App\Models\Solution;
use App\Models\SpeedTraining;
use App\Models\Task;
use App\Models\Training;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Laravel\Ui\AuthCommand;

class HomeController extends Controller
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


        return view('dashboard.home');
    }



    public function edit()
    {

        $administrator = auth()->user();
        return view('dashboard.edit',compact('administrator'));
    }

    public function update($id,ProfileRequest $request)
    {
        $requests=$request->except('role');
        if(!is_null($request->password)){
            $requests['password']=Hash::make($request->password);
        }else{
            unset($requests['password']);
        }
        if ($request->hasFile('image')) {
            $requests['image'] = saveImage($request->image, 'images');
            $request->files->remove('image');
        }
        $administrator = Administrator::find($id);
        $administrator->fill($requests)->save();
//        $user->syncRoles($request->role);
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.home'));
    }

    public function subcategories(Request $request){
        $subcategories = Category::where('upper_id',$request->category_id)->pluck('name','id');
        return $subcategories;
    }

    public function targets(Request $request){

        switch ($request->target_type) {
            case 'event':
                return Event::all()->pluck('title','id');
    break;
            case 'item':
                return Item::all()->pluck('name','id');
    break;
            case 'job':
                return Job::all()->pluck('title','id');
    break;
            case 'room':
                return Room::all()->pluck('title','id');
    break;
            case 'solution':
                return Solution::all()->pluck('title','id');
    break;
            case 'speed_training':
                return SpeedTraining::all()->pluck('title','id');
    break;
            case 'training':
                return Training::all()->pluck('title','id');
    break;

        }




    }

}
