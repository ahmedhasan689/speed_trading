<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Solution extends Model
{

    protected $table = 'solutions';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');

    public $translatable = ['title','content'];


    public function getImageAttribute(){
        $image = $this->images()->where('type','image')->first();
        if($image){
            return $image->url;
        }
        return '';
    }

    public function items(){
        return $this->belongsToMany(Item::class);
    }

    public function images(){
        return $this->hasMany(SolutionImage::class,'solution_id');
    }




}
