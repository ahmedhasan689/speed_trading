<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Translatable\HasTranslations;

class Job extends Model
{

    protected $table = 'jobs';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');
    public $translatable = ['title','description','notes'];


    public function category(){
        return $this->belongsTo(JobCategory::class,'job_category_id');
    }

    public function city(){
        return $this->belongsTo(City::class,'city_id');
    }

    public function applications(){
        return $this->hasMany(JobApplication::class,'job_id');
    }

}
