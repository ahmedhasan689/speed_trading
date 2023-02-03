<?php

namespace App\Http\Resources;

use App\Models\Category;
use Illuminate\Http\Resources\Json\JsonResource;

class JobResource extends JsonResource
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
            "city"=> optional($this->city)->name ?? '',
            "category" => optional($this->category)->name ?? '',
            "share_link"=> '#'

        ];
    }
}
