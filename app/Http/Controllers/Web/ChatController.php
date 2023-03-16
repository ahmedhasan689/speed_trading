<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\ChatChannel;
use App\Models\ChatMessage;
use App\Models\Notification;
use App\Models\Token;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ChatController extends Controller
{
    public function store(Request $request)
    {

        $message = ChatMessage::create([
            'channel_id'=> $request->channel_id,
            'message' => $request->message,
            'from_id' => auth()->id(),
            'to_id' => ChatChannel::find($request->channel_id)->admin_id
        ]);

        Notification::create([
            'type'              => 'notification',
            'title'             => 'رسالة جديدة',
            'data'              => $request->message,
            'click_action'      => 'FLUTTER_NOTIFICATION_CLICK',
            'notifiable_type'   => 'App\Models\User',
            'notifiable_id'     => ChatChannel::find($request->channel_id)->user_id,
        ]);

        $time = Carbon::parse($message->created_at)->format('H:i:s');

        return response()->json([
            'message' => $message,
            'time' => $time,
        ]);
    }
}
