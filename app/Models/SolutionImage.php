<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class SolutionImage extends Model
{

    protected $table = 'solution_images';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');


    public function room()
    {
        return $this->belongsTo(Solution::class, 'solution_id');
    }

}
