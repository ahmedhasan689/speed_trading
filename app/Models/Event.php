<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Event extends Model
{

    protected $table = 'events';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');
    public $translatable = ['title','content'];




    public function images(){
        return $this->hasMany(EventImage::class,'event_id');
    }

    public function reservations(){
        return $this->hasMany(EventReservation::class,'event_id');
    }

    public function getImageAttribute(){
        $image = $this->images()->where('type','image')->first();
        if($image){
            return $image->url;
        }
        return '';
    }

    public function gettypeAttribute(){
        if ($this->date < date('Y-m-d')){
            return 'finished';
        }
        return 'upcoming';
    }

}
