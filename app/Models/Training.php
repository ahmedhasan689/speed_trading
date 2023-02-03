<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Training extends Model
{

    protected $table = 'trainings';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');
    public $translatable = ['title','content'];





    public function images(){
        return $this->hasMany(TrainingImage::class,'training_id');
    }

    public function reservations(){
        return $this->hasMany(TrainingReservation::class,'training_id');
    }



    public function gettypeAttribute(){
        if ($this->date < date('Y-m-d')){
            return 'finished';
        }
        return 'upcoming';
    }
}
