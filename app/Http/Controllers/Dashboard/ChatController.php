<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\BrandRequest;
use App\Models\Brand;
use App\Models\ChatChannel;
use App\Models\ChatMessage;
use App\Models\Token;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ChatController extends Controller
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

    public function index() {
//        $list = Rates::filter(request(), RateFilter::class)->paginate();
        $list = ChatChannel::with('messages')->get();
        $messages =null;
        if (request()->has('id')) {
            $messages = ChatMessage::where('channel_id', request()->id)->get();
        }
        return view('dashboard.chat.index', compact('list','messages'));
    }

    public function store(Request $request){
        $message = ChatMessage::create([
            'channel_id'=>$request->channel_id,
            'message'=>$request->message,
            'from_id'=> auth()->id(),
            'to_id'=>ChatChannel::find($request->channel_id)->user_id
        ]);
        $admins = User::where('main_role','admin')->pluck('id')->toArray();
        $admins[]=ChatChannel::find($request->channel_id)->user_id;
        $tokens = Token::whereIn('user_id',$admins)->pluck('token')->toArray();
        $firebase = firebase_chat_notification('Chat',$request->message ?? 'message',$tokens,'FLUTTER_CHAT_CLICK',[
            'title'=>$request->title ?? 'Chat',
            'body'=>$request->message ?? 'message',
            'click_action'=>'FLUTTER_CHAT_CLICK',
//            'is_chat' => 1 ?? 0
        ]);


        return $message;
    }
}
