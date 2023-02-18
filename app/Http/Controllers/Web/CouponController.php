<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Promocode;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CouponController extends Controller
{
    public function store(Request $request)
    {
        $coupon = Promocode::query()->where('code', 'LIKE',"%{$request->code}%")->first();

        $carts = Cart::query()->where('user_id', Auth::id())->get();

        if( $coupon ) {
            if ( $coupon->to_date >= Carbon::today() && $coupon->from_date <= Carbon::today()) {
                return response()->json([
                    'error' => 'Code Not In Range',
                ]);
            }else{

                foreach ( $carts as $cart ) {
                    $cart->update([
                        'coupon_id' => $coupon->id,
                    ]);
                }

                $coupon->increment('used');
            }


        }else{
            return response()->json([
                'error' => 'There Is No Code With This Name',
            ]);
        }
    }
}
