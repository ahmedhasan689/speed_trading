<?php

namespace App\Http\Resources;

use App\Models\Cart;
use Illuminate\Http\Resources\Json\JsonResource;

class ItemOneResource extends JsonResource
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
        return [
            "id"=> $this->id,
            "name"=> $this->name ?? "" ,
            "details"=> $this->details ?? "" ,
            "part_number" => $this->part_number,
            "brand"=> new BrandResource($this->brand) ,
            "category" => new SubCategoryResource($this->category) ,
            "images"=> ItemImageResource::collection($this->images),
            "price" => (string)$this->price,
            "old_price" =>(string)$this->old_price ?? '',
            "final_price" => (string)$this->final_price,
            "is_favourite" => $this->is_favourite,
            "user_manual" => $this->user_manual ? url($this->user_manual) : '',
            "rate" => $this->rate,
            //"rates" => $this->rates,
            "in_cart" =>$inCart,
            "share_link"=> '#',
//            "is_rated" => $this->is_rated,

        ];
    }
}
