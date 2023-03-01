<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AddressResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "id"=> $this->id,
            "name"=> $this->name,
            "governorate"=> new CityResource($this->city->governorate) ,
            "city"=>new CityResource($this->city) ,
            "address" =>$this->address,
            "lat"=>$this->lat,
            "lng"=>$this->lng,
            "is_primary"=>$this->is_primary,
            "user_id"=>$this->user_id
        ];
    }
}
