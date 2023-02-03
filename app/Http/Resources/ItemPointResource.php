<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ItemPointResource extends JsonResource
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
            "brand"=> new BrandResource($this->brand) ,
            "image"=> $image ? url($image->url) : '',
            "points" => $this->point_to_get,
        ];
    }
}
