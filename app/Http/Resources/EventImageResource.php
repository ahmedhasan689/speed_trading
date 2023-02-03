<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EventImageResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {

        if ($this->type == 'image'){
            $url = ($this->url ? url($this->url) : '');
        }else{
            $url = $this->url ?? '';
        }
        return [
            "id"=> $this->id,
            "url"=> $url ,
            "event_id"=> $this->event_id ?? "" ,
            "type" =>$this->type ?? ''
        ];
    }
}
