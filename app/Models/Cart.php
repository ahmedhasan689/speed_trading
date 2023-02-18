<?php

namespace App\Models;

use App\Http\Resources\OrderImageResource;
use Appstract\Options\Option;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Cart extends Model
{

    protected $table = 'carts';
    public $timestamps = true;


    protected $dates = ['deleted_at'];
    protected $guarded = array('id');
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function item()
    {
        return $this->belongsTo(Item::class,'item_id');
    }

    public function coupon()
    {
        return $this->belongsTo(Promocode::class, 'coupon_id');
    }


    // Get Total
    public function getPriceAttribute()
    {
        return Cart::where('user_id', Auth::id())
            ->join('items', 'items.id', '=', 'carts.item_id')
            ->selectRaw('SUM(items.price*carts.quantity) as total')
            ->value('total');
    }

    public function getFinalPriceAttribute()
    {
        $cart = Cart::where('user_id', Auth::id())->whereNotNull('coupon_id')->first();
        $vat = Option::where('key', 'vat')->first();

        if( $cart ) {
            return ( $cart->coupon->percent / 100 ) * $this->getPriceAttribute() + $vat->value;
        }else{
            return $this->getPriceAttribute() + $vat->value;
        }

    }
}
