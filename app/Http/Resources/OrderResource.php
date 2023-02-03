<?php

namespace App\Http\Resources;

use App\Models\Store;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

class OrderResource extends JsonResource
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
            "user"=>new UserResource($this->user),
            "provider"=>new UserResource($this->provider),
            "details"=>OrderDetailsTotalResource::collection($this->details),
            "price"=>$this->price ?? 0,
            "address" =>new AddressResource($this->address) ?? '',
            "status"=>$this->status ?? '',
            "items_total"=>$this->details->sum('total'),
            "vat"=>$this->vat,
            "shipping"=>$this->shipping,
            "discount"=>$this->discount,
            "total" =>$this->price,
            "payment_method" =>$this->payment_method,
            "created_at" =>$this->created_at,
            "confirmed_at" =>$this->confirmed_at,
            "shipping_at" =>$this->shipping_at,
            "delivered_at" =>$this->delivered_at,
            "cancelled_at" =>$this->cancelled_at,
            "is_rated"=>$this->is_rated,
            "dates"=>$this->human_date
        ];
    }
}
