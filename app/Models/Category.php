<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Translatable\HasTranslations;

class Category extends Model
{

    protected $table = 'categories';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $fillable = array('name','image','upper_id');
    public $translatable = ['name'];

    public function subs(){
        return $this->hasMany(Category::class,'upper_id');
    }

    public function upper(){
        return $this->belongsTo(Category::class,'upper_id');
    }

    public function getLongNameAttribute(){


        $name = $this->getTranslation('name', app()->getLocale());
        if ($this->upper_id != null){
            $upper = Category::find($this->upper_id)->name;
            $name = $upper . ' > ' . $name;
        }


        return $name;
    }


}
