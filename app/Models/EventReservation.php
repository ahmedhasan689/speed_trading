<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class EventReservation extends Model
{

    protected $table = 'event_reservations';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');





    public function event(){
        return $this->belongsTo(Event::class,'event_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }



}
