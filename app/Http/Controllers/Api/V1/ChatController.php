<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;

use App\Http\Resources\ChatMessageResources;
use App\Http\Resources\ChatResources;
use App\Models\ChatChannel;
use App\Models\ChatMessage;
use App\Models\Token;
use App\Models\User;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class ChatController extends Controller {

    use ApiResponse;

    public function index() {
        if (Auth::user()->main_role =='client') {
            $chatList = ChatChannel::whereHas('messages')->where('user_id', auth()->id())->paginate();
        }else{
            $chatList = ChatChannel::whereHas('messages')->where('admin_id', auth()->id())->paginate();

        }
        return $this->okApiResponse(ChatResources::collection($chatList)->response()->getData(true),__('Chat list'));

    }

    public function messages(){
        $channel = ChatChannel::where('user_id',auth()->id())->first();
        if (!$channel){
            $channel = ChatChannel::create(['user_id'=>auth()->id(),'admin_id'=>1]);
        }
        $list = ChatMessage::without(['services','branches','days'])->where('channel_id',$channel->id)->orderByDesc('id')->paginate();

        return $this->okApiResponse(ChatMessageResources::collection($list)->response()->getData(true),__('Messages list'));

    }

    public function sendMessage(Request $request){
        $channel = ChatChannel::where('user_id',auth()->id())->first();
        if (!$channel){
            $channel = ChatChannel::create(['user_id'=>auth()->id(),'admin_id'=>1]);
        }

        $request_image = '';
        $tokens='';
        $from_id='';
        $to_id ='';
        if ($request->has('image') && $request->image != null){
            $request_image = $this->saveImage($request->image);
            $request->files->remove('image');
        }

            $from_id=auth()->id();
            $to_id = User::where('main_role','admin')->pluck('id')->toArray();
            ChatMessage::create([
                'channel_id' => $channel->id,
                'from_id' => $from_id,
                'to_id' => 1,
                'message' => ($request->message ?? ''),
                'image' => $request_image
            ]);
            $tokens = Token::whereIn('user_id',$to_id)->pluck('token')->toArray();

            //TODO FLUTTER_NOTIFICATION_CLICK
        //FLUTTER_CHAT_CLICK
        //FLUTTER_ORDER_CLICK
        $firebase = firebase_chat_notification('Chat',$request->message,$tokens,'FLUTTER_CHAT_CLICK',[
            'title' => 'Chat',
            'message' => $request->message,
//            'is_chat' => 1 ?? 0,
//            'from_id' => $from_id ?? 0,
//            'to_id' => $to_id ?? 0,
//            'channel_id' => $channel->id ?? 0,
//            'image' => $request_image,
//            'sender'=>Auth::user()->name
        ]);
//        $firebase = (new Firebase())
//            ->setTitle('Chat')
//            ->setBody($request->message)
//            ->setClickAction("FLUTTER_NOTIFICATION_CLICK")
//            ->setMoreData([
//                'title' => 'chat',
//                'message' => $request->message,
//                'is_chat' => 1 ?? 0,
//                'from_id' => $from_id ?? 0,
//                'to_id' => $to_id ?? 0,
//                'channel_id' => $request->channel_id ?? 0,
//                'image' => $request_image,
//            ])
//            ->setAuthorizationKey(env('FCM_API_ACCESS_KEY'))
//            ->setTokens($tokens)->do();
        return $this->okApiResponse([$firebase],__('Send successfully'));

    }

    public function getChannel(){
        $channel = ChatChannel::create(['user_id'=>auth()->id(),'admin_id'=>1]);
//        if (Auth::user()->main_role =='client'){
//            $channel = ChatChannel::where('user_id',auth()->id())->where('admin_id',$id)->first();
//
//            if (!$channel){
//                $channel = ChatChannel::create(['user_id'=>auth()->id(),'admin_id'=>$id]);
//            }
//        }else{
//            $channel = ChatChannel::where('admin_id',auth()->id())->where('user_id',$id)->first();
//
//            if (!$channel){
//                $channel = ChatChannel::create(['admin_id'=>auth()->id(),'user_id'=>$id]);
//            }
//        }

        return $this->okApiResponse(new ChatResources($channel),__('Send successfully'));

    }

    function saveImage($file, $folder = '/')
    {
        request()->files->remove('link');

        $fileName = time() . rand(10,99).$file->getClientOriginalName();
        $dest = public_path('/uploads/' . $folder);
        $file->move($dest, $fileName);

        $uploaded_file = 'uploads/' . $folder . '/' . $fileName;
        return $uploaded_file;
    }
}


