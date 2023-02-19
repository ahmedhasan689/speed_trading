<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Item extends Model
{

    protected $table = 'items';
    public $timestamps = true;

    use SoftDeletes,HasTranslations;

    protected $dates = ['deleted_at'];
    protected $guarded = array('id');
    public $translatable = ['name','details'];


    public function favourite()
    {
        return $this->morphMany(Favourite::class, 'favourable');
    }

    public function getIsFavouriteAttribute(){
        //$isFavourite =0;
        $count = $this->favourite->where('user_id',Auth::guard('sanctum')->id())->count();
        if ($count > 0){
            return 1;
        }

         return 0;
    }

    public function brand(){
        return $this->belongsTo(Brand::class,'brand_id');
    }

    public function category(){
        return $this->belongsTo(Category::class,'category_id');
    }

    public function images()
    {
        return $this->hasMany(ItemImage::class,'item_id');
    }

    public function getImageAttribute(){
        $image = $this->images()->first();
        if($image){
            return $image->url;
        }
        return '';
    }
    public function rates(){
        return $this->hasMany(Rate::class,'item_id');
    }

    public function getRateAttribute(){
        return $this->rates()->avg('rate') ?? '0';
    }
    public function getIsRatedAttribute(){
        $user = auth('sanctum')->id() ?? 0;
        $count =  $this->rates()->where('user_id',$user)->count();
        if ($count > 0){
            return 1;
        }
        return 0;
    }

    public function getFinalPriceAttribute(){
        if($this->old_price == null || $this->old_price == 0){
            return $price = $this->price;
        } elseif ($this->old_price && ($this->old_price > $this->price)){
            return $price = $this->price;
        }else{
            return $price = $this->old_price;
        }
    }

//    public function getInCartAttribute(){
//        return Auth::check();
//        if (auth()->user()){
//            $count = Cart::where('item_id',$this->id)->where('user_id',auth()->id())->count();
//            if ($count > 0){
//                return 1;
//            }
//        }
//        return 0;
//    }

//    public function detail(){
//        return $this->belongsTo(OrderDetail::class,'item_id');
//    }


    public function scopeTableFilters($query)
    {
        return $query->when(request()->input('price', false), function ($query, $price) {
            return $query->whereBetween('price', [ $price[0], $price[1] ]);
        })->when(request()->input('brand_id', false), function ($query, $brand_id) {
            return $query->where('brand_id', 'like', '%' . $brand_id . '%');
        })->when(request()->input('category_id', false), function ($query, $category_id) {
            return $query->where('category_id', $category_id );
        });
    }
}
