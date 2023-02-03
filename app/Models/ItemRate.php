<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class ItemRate extends Model
{

    protected $table = 'item_rates';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');


    public function item()
    {
        return $this->belongsTo(Item::class, 'item_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

}
