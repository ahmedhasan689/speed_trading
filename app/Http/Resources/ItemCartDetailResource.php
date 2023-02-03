<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ItemCartDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $image = $this->item->images()->first();
        return [
            "id"=> $this->id,
            "brand"=> new BrandResource($this->item->brand) ,
            "name"=> $this->item->name ?? "" ,
            "image"=> $image ? url($image->url) : '',
            "final_price" => (string)($this->item->final_price * $this->quantity),
            "quantity" =>$this->quantity,
            "item_id"=>$this->item->id

        ];
    }
}
