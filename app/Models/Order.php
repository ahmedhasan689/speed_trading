<?php

namespace App\Models;

use App\Http\Resources\OrderImageResource;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Translatable\HasTranslations;

class Order extends Model
{

    protected $table = 'orders';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');

    const TYPE_RENT='rent';
    const TYPE_TRANSPORTATION='transportation';

    const STATUS_NEW='new';
    const STATUS_CONFIRMED='confirmed';
    const STATUS_CANCELLED='cancelled';
    const STATUS_FINISHED='finished';
    const STATUS_SHIPPED='shipped';


    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function provider()
    {
        return $this->belongsTo(User::class,'provider_id');
    }

    public function details()
    {
        return $this->hasMany(OrderDetail::class,'order_id');
    }
    public function address()
    {
        return $this->belongsTo(Address::class,'address_id');
    }
    public function promocode()
    {
        return $this->belongsTo(Promocode::class,'coupon_id');
    }



    public function getPriceAttribute(){
        if ($this->attributes['coupon_id'] != null){
            return $this->attributes['price'] - $this->attributes['discount'] +$this->attributes['vat'] ;
        }

        return $this->attributes['price']+$this->attributes['vat'];
    }

    public function getStatusAttribute(){
        if ($this->delivered_at != null){
            return self::STATUS_FINISHED;
        }
        if ($this->cancelled_at != null){
            return self::STATUS_CANCELLED;
        }
        if ($this->shipping_at != null){
            return self::STATUS_SHIPPED;
        }
        if ($this->confirmed_at != null){
            return self::STATUS_CONFIRMED;
        }
        return self::STATUS_NEW;
    }

    public function getIsRatedAttribute(){
        $count = Rate::where('order_id',$this->id)->where('user_id',auth('sanctum')->id())->count();
        if ($count > 0){
            return 1;
        }
        return 0;
    }

    public function getHumanDateAttribute(){

        //Carbon::setLocale(app()->getLocale());
        if (app()->getLocale() == 'ar'){
            setLocale(LC_TIME, 'ar_EG');
        }
        return [
            'created_at'=>$this->created_at ? Carbon::parse($this->created_at)->translatedFormat('l j F Y h:i a') : '',
            'confirmed_at'=>$this->confirmed_at ? Carbon::parse($this->confirmed_at)->translatedFormat('l j F Y h:i a') : '',
            'shipping_at'=>$this->shipping_at ? Carbon::parse($this->shipping_at)->translatedFormat('l j F Y h:i a') : '',
            'delivered_at'=>$this->delivered_at ? Carbon::parse($this->delivered_at)->translatedFormat('l j F Y h:i a') : '',
            'cancelled_at'=>$this->cancelled_at ? Carbon::parse($this->cancelled_at)->translatedFormat('l j F Y h:i a') : '',

        ];

    }

}
