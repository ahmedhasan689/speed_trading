<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SolutionImageResource extends JsonResource
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
            "url"=> $this->url ? url($this->url) : '' ,
            "solution_id"=> $url ,
            "type" =>$this->type ?? 'image'


        ];
    }
}
