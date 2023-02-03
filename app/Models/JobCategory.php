<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Translatable\HasTranslations;

class JobCategory extends Model
{

    protected $table = 'job_categories';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name');
    public $translatable = ['name'];

    public function jobs(){
        return $this->hasMany(Job::class,'job_category_id');
    }

}
