<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class OrderDetail extends Model
{

    protected $table = 'order_details';
    public $timestamps = true;
    protected $guarded = array('id');

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function item(){

        return $this->belongsTo(Item::class,'item_id');
    }

    public function getTotalAttribute(){
        return ($this->price * $this->quantity);
    }




}
