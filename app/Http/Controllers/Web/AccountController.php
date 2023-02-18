<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AccountController extends Controller
{
    /**
     * @param Request $request
     * @return View
     */
    public function index(Request $request)
    {
        $user = User::query()->where('id', Auth::id())->first();

        if ( $request->ajax() ) {
            return view('web.account.card-info', compact('user'))->render();
        }

        return view('web.account.index', compact('user'));
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function update(Request $request): JsonResponse
    {
        $user = User::query()->where('id', Auth::id())->first();

        $request->validate([
            'name' => 'required',
            'mobile' => 'required|numeric|unique:users,mobile,'.$user->id,
            'email' => 'required|email|unique:users,email,'.$user->id,
        ]);

        $user->update([
            'name' => $request->name,
            'mobile' => $request->mobile,
            'email' => $request->email,
        ]);

        return response()->json([
            'success' => 'Done',
        ]);
    }


    public function resetPassword(Request $request)
    {
        $user = User::query()->where('id', Auth::id())->first();

        $request->validate([
            'old_password' => 'required',
            'password' => 'required|confirmed|min:8',
        ]);

        if ( !Hash::check($request->old_password, $user->password) ) {
            return response()->json([
                'password' => 'كلمة المرور القديمة غير صحيحة',
            ]);
        }

        $user->update([
            'password' => Hash::make($request->password),
        ]);

        return response()->json([
            'success' => 'Done',
        ]);

    }
}
