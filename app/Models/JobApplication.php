<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Translatable\HasTranslations;

class JobApplication extends Model
{

    protected $table = 'job_applications';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');


    public function job(){
        return $this->belongsTo(Job::class,'job_id');
    }

    public function city(){
        return $this->belongsTo(City::class,'city_id');
    }

}
