<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddressRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required|string',
            'lat'=>'required',
            'lng'=>'required',
            'city_id'=>'required',

        ];
    }

    public function attributes()
    {
        return [
            'name' => __('Name'),
            'lat' => __('Latitude'),
            'lng' => __('Longitude'),
            'city_id' => __('City'),
        ];
    }
}
