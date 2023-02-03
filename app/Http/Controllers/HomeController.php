<?php

namespace App\Http\Controllers;

use App\Models\Token;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class HomeController extends Controller
{



    public function updateToken(Request $request){
        try{
//            $request->user()->update(['fcm_token'=>$request->token]);
            Token::updateOrCreate(["user_id" => auth()->id()], ['token' => $request->token ]);

            return response()->json([
                'success'=>true
            ]);
        }catch(\Exception $e){
            report($e);
            return response()->json([
                'success'=>false
            ],500);
        }
    }

}
