<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;
use Symfony\Component\HttpFoundation\RedirectResponse;

class GoogleController extends Controller
{
    /**
     * @return \Illuminate\Http\RedirectResponse|RedirectResponse
     */
    public function googleRedirect()
    {
        return Socialite::driver('google')->redirect();
    }


    public function googleCallback()
    {
        try{

            $user = Socialite::driver('google')->user();

            $userExisted = User::where('google_token', $user->id)->first();

            if( $userExisted ) {
                Auth::login($userExisted);

                return redirect()->route('account.index');
            }else{

                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'google_token' => $user->id,
                    'password' => Hash::make($user->id),
                ]);

                Auth::login($newUser);

                return redirect()->route('account.index');
            }

        }catch (\Exception $e) {
            dd($e);
        }
    }
}
