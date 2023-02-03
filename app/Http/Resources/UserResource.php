<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            "created_at"=> $this->created_at->format('Y-m-d'),
            "name"=> $this->name,
            "email"=> $this->email,
            "mobile"=> $this->mobile,
            "new_mobile"=> $this->new_mobile ?? '',
            "image"=> $this->image? url($this->image): '',
            "sms_code"=> $this->sms_code ?? '',
            "api_token"=> $this->api_token ?? '',
            "notification_status"=> $this->notification_status,
            "status"=>$this->status ?? '',
            "active_orders" =>$this->active_orders ?? 0,
            "is_social"=>$this->is_social
        ];
    }
}
