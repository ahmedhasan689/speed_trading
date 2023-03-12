<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;

class PasswordResetLinkController extends Controller
{
    /**
     * Display the password reset link request view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.forgot-password');
    }

    /**
     * Handle an incoming password reset link request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $user = User::where('mobile',request('mobile'))->first();

        if (is_null($user)) {
            return response()->json([
                'not_found' => 'Mobile Not Found'
            ]);
        }

        $user->sms_code = rand(111111,999999);
        //$user->sms_code = 123456;
        $user->save();

        twilioSMS($user->mobile,'Your activation code is : '.$user->sms_code);
        return response()->json([
            'success' => $user->mobile,
        ]);
    }

    public function codeConfirm(Request $request)
    {
        $user = User::query()->where('mobile', request('mobile'))->first();


        if (is_null($user)) {
            return response()->json([
                'errors' => 'User Not Found',
            ]);
        }
        if( $user->sms_code != (int) $request->sms_code ) {
            return response()->json([
                'errors' => 'Invalid Code',
            ]);

        }
        return response()->json([
            'success' => 'Done',
        ]);

    }

    public function resetPassword(Request $request)
    {
        $request->validate([
            'password' => 'required|min:8',
            'repeat_password' => 'required',
        ]);

        $user = User::where('mobile', $request->mobile)->first();

        if ( $request->password != $request->repeat_password ) {
            return response()->json([
                'errors' => 'Password And Repeat Password Not The Same',
            ]);
        }

        $user->update([
            'password' => Hash::make( $request->password )
        ]);

        Auth::login($user);

        return response()->json([
            'success' => 'Done',
        ]);
    }

}
