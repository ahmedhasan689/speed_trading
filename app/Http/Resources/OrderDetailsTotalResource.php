<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderDetailsTotalResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $image = optional(optional($this->item)->images())->first();
        return [
            "id"=> $this->id,
//            "order_id"=> $this->order_id ??'',
            "item_id"=>$this->item_id,
            "quantity"=> $this->quantity ??'',
            "price"=> $this->price ??'',
            "total"=> $this->total ??'',
            "name"=> optional($this->item)->name ??'',
            "image"=>$image ? url($image->url) : '',
            "brand"=> new BrandResource($this->item->brand) ,
        ];
    }
}
