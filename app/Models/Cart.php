<?php

namespace App\Models;

use App\Http\Resources\OrderImageResource;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
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


}
