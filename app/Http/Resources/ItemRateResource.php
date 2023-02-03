<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ItemRateResource extends JsonResource
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
            "item_id"=> $this->item_id ?? "" ,
            "user_id"=> $this->user_id ?? "" ,
            "name"=>optional($this->user)->name ?? "",
            "date"=>date('Y-m-d',strtotime($this->created_at)),
            "rate"=> $this->rate ?? 0 ,
            "comment" =>$this->comment ?? ''
        ];
    }
}
