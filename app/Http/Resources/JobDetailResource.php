<?php

namespace App\Http\Resources;

use App\Models\Category;
use Illuminate\Http\Resources\Json\JsonResource;

class JobDetailResource extends JsonResource
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
            "name"=> $this->title,
            "description"=> $this->description ??'',
            "notes"=> $this->notes ??'',
            "city"=>new CityResource($this->city),
            "category" => new JobCategoryResource($this->category),
            "share_link"=> '#'
        ];
    }
}
