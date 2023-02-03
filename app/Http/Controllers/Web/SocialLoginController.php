<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use Symfony\Component\HttpFoundation\RedirectResponse;

class SocialLoginController extends Controller
{

    /**
     * @return \Illuminate\Http\RedirectResponse|RedirectResponse
     */
    public function google()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * @return Application|\Illuminate\Http\RedirectResponse|Redirector
     */
    public function googleCallback()
    {
        $googleUser = Socialite::driver('google')->stateless()->user();

        $user = User::where('google_id', $googleUser->id)->first();

        if ($user) {
            $user->update([
                'google_token' => $googleUser->token,
            ]);
        } else {
            $user = User::create([
                'name' => $googleUser->name,
                'email' => $googleUser->email,
                'google_id' => $googleUser->id,
                'google_token' => $googleUser->token,
                'main_role' => 'client',
            ]);
        }

        \Auth::login($user);

        return redirect('/');

    }

    /**
     * @return \Illuminate\Http\RedirectResponse|RedirectResponse
     */
    public function facebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * @return void
     */
    public function facebookCallback()
    {
        $user = Socialite::driver('facebook')->user();
    }

}
