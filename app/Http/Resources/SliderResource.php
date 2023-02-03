<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SliderResource extends JsonResource
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
            $url = ($this->image ? url($this->image) : '');
        }else{
            $url = $this->image ?? '';
        }
        return [
            "image"=> $url,
            "type" =>$this->type ?? 'image',
            "target_type"=>$this->target_type ?? '',
            "target_id"=>$this->target_id ?? ''
        ];
    }
}
