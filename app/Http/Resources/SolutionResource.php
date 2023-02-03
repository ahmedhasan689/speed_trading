<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SolutionResource extends JsonResource
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
            "title"=> $this->title ?? "" ,
            "content"=> $this->content ?? "" ,
            "images"=> SolutionImageResource::collection($this->images),
            "share_link"=> '#',
            "items"=>ItemResource::collection($this->items)

        ];
    }
}
