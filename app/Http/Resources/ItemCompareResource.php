<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ItemCompareResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {

$image = $this->images()->first();
        return [
            "id"=> $this->id,
            "name"=> $this->name ?? "" ,
            "details"=> $this->details ?? "" ,
            "part_number"=> $this->part_number,
            "brand"=> new BrandResource($this->brand) ,
            "category" => new SubCategoryResource($this->category) ,
            "image"=> $image ? url($image->url) : '',
            "price" => (string)$this->price,
            "final_price" => (string)$this->final_price,
//            "image_resolution" =>$this->image_resolution ??'',
//            "lens_resolution" =>$this->lens_resolution ??'',
//            "movement" =>$this->movement ??'',
//            "night_capturing" =>$this->night_capturing ??'',
//            "recording_mode" =>$this->recording_mode ??'',
//            "internal_storage" =>$this->internal_storage ??'',

        ];
    }
}
