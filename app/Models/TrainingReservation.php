<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class TrainingReservation extends Model
{

    protected $table = 'training_reservations';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');





    public function training(){
        return $this->belongsTo(Training::class,'training_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }


}
