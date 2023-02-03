<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Translatable\HasTranslations;
use Tasawk\Locations\Models\Zone;

class City extends Model
{

    protected $table = 'cities';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name','upper_id');
    public $translatable = ['name'];


    public function cities(){
        return $this->hasMany(City::class,'upper_id');
    }

    public function governorate(){
        return $this->belongsTo(City::class,'upper_id');
    }

    public function addresses(){
        return $this->hasMany(Address::class,'city_id');
    }

    public function jobAbblications(){
        return $this->hasMany(JobApplication::class,'city_id');
    }


}
