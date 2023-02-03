<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class SpeedTraining extends Model
{

    protected $table = 'speed_trainings';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');

    public $translatable = ['title','content'];




    public function images(){
        return $this->hasMany(SpeedTrainingImage::class,'speed_training_id');
    }

    public function reservations(){
        return $this->hasMany(SpeedTrainingReservation::class,'speed_training_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }

    public function gettypeAttribute(){
        if ($this->date < date('Y-m-d')){
            return 'finished';
        }
        return 'upcoming';
    }



}
