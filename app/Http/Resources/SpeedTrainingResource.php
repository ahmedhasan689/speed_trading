<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SpeedTrainingResource extends JsonResource
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
            "location"=> $this->location ?? "" ,
            "date"=> ($this->date . ' : '. $this->date_to) ?? "" ,
            "images"=> SpeedTrainingImageResource::collection($this->images),
            "share_link"=> '#',
            "type" =>$this->type ?? ''
        ];
    }
}
