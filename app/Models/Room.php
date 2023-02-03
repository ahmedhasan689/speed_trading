<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Room extends Model
{

    protected $table = 'rooms';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');

    public $translatable = ['title','content'];



    public function images(){
        return $this->hasMany(RoomImage::class,'room_id');
    }
    public function getImageAttribute(){
        $image = $this->images()->first();
        if($image){
            return $image->url;
        }
        return '';
    }




}
