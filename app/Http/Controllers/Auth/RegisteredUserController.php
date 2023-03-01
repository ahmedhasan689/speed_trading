<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
{

    if( $request->type_admin ) {
        // This Is Means That The Type OfThis User Is " Admin "
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', Rules\Password::defaults()],
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'main_role' => $request->type_admin,
        ]);
    }elseif( $request->type ){
        // This Is Means That The Type OfThis User Is " Service Provider "

        $company_tax_number = null;
        if ($request->hasFile('company_tax_number')) {
            $file = $request->file('company_tax_number');

            $company_tax_number = $file->store('uploads', [
                'disk' => 'public',
            ]);
        }

        $company_commercial_record_number = null;
        if ($request->hasFile('company_commercial_record_number')) {
            $file = $request->file('company_commercial_record_number');

            $company_commercial_record_number = $file->store('uploads', [
                'disk' => 'public',
            ]);
        }
//        dd($company_commercial_record_number);

        $request->validate([
            'company_name' => ['required', 'string'],
            'company_tax_number' => ['required'],
            'company_commercial_record_number' => ['required'],
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', Rules\Password::defaults()],
            'mobile' => ['required', 'numeric']
        ]);

        $user = User::create([
            'company_name' => $request->company_name,
            'company_tax_number' => $company_tax_number,
            'company_commercial_record_number' => $company_commercial_record_number,
            'main_role' => $request->type,
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'mobile' => $request->mobile,
        ]);
    }else{ // This Is Means That The Type OfThis User Is " Client "
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email'],
            'password' => ['required', Rules\Password::defaults()],
            'mobile' => ['required', 'numeric']
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'mobile' => $request->mobile ?? null,
        ]);
    }

    event(new Registered($user));

    Auth::login($user);

    return redirect(RouteServiceProvider::USER);
}
}
