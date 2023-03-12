<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\BrandRequest;
use App\Models\Brand;
use App\Models\Notification;
use App\Models\Token;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
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

        $notifications = Notification::where('click_action','FLUTTER_NOTIFICATION_CLICK')->orderByDesc('id')->paginate(5);

        return view('dashboard.notifications.index', compact('notifications'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $notification=new Notification();
        return view('dashboard.notifications.create',compact('notification'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {

        $tokens = Token::all()->pluck('token')->toArray();
        $users = User::where('main_role','client')->get();
        foreach ($users as $user){
            Notification::create([
                'type'              => 'notification',
                'title'             => $request->title,
                'data'              => $request->message,
                'click_action'      => 'FLUTTER_NOTIFICATION_CLICK',
                'notifiable_type'   => 'App\Models\User',
                'notifiable_id'     => $user->id
            ]);
        }

        $firebase = firebase_chat_notification($request->title ?? 'title',$request->message ?? 'message',$tokens,'FLUTTER_NOTIFICATION_CLICK',[
            'title'=>$request->title ?? 'title',
            'body'=>$request->message ?? 'message',
            'click_action'=>'FLUTTER_NOTIFICATION_CLICK'
        ]);
        toast(__('Sent successfully'),'success');
        return redirect(route('dashboard.notifications.index'));
    }

}
