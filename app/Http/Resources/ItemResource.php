<?php

namespace App\Http\Resources;

use App\Models\Cart;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

class ItemResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $inCart = 0;

        if (auth('sanctum')->user()){
            $count = Cart::where('item_id',$this->id)->where('user_id',auth('sanctum')->id())->count();
            if ($count > 0){
                $inCart =  1;
            }
        }
$image = $this->images()->first();
        return [
            "id"=> $this->id,
            "name"=> $this->name ?? "" ,
            "part_number" => $this->part_number,
            "brand"=> new BrandResource($this->brand) ,
            "category" => new SubCategoryResource($this->category) ,
            "image"=> $image ? url($image->url) : '',
            "price" => (string)$this->price,
            "old_price" =>(string)$this->old_price ?? '',
            "final_price" => (string)$this->final_price,
            "is_favourite" => $this->is_favourite,
//            "user_manual" => $this->user_manula ? url($this->user_manual) : '',
            "rate" => $this->rate,
            "in_cart" =>$inCart
//            "share_link"=> '#'

        ];
    }
}
