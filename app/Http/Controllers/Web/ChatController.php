<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\ChatChannel;
use App\Models\ChatMessage;
use App\Models\Token;
use App\Models\User;
use Illuminate\Http\Request;

class ChatController extends Controller
{
    public function store(Request $request){
        $message = ChatMessage::create([
            'channel_id'=>$request->channel_id,
            'message'=>$request->message,
            'from_id'=> auth()->id(),
            'to_id'=>ChatChannel::find($request->channel_id)->user_id
        ]);
        $admins = User::where('main_role','admin')->pluck('id')->toArray();
        $admins[] = ChatChannel::find($request->channel_id)->user_id;
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
