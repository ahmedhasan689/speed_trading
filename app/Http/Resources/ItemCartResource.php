<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ItemCartResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $price = 0;
        if($this->item->old_price == null || $this->item->old_price == 0){
            $price = $this->item->price;
        } elseif ($this->item->old_price && ($this->item->old_price > $this->item->price)){
            $price = $this->item->price;
        }else{
            $price = $this->item->old_price;
        }
$image = $this->item->images()->first();
        return [
            "id"=> $this->id,
            "brand"=> new BrandResource($this->item->brand) ,
            "name"=> $this->item->name ?? "" ,
            "image"=> $image ? url($image->url) : '',
            "one_price" => (string)$price,
            "total_price" => (string)($price * $this->quantity),
            "quantity" =>$this->quantity,
            "item_id"=>$this->item->id

        ];
    }
}
