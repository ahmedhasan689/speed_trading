<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VendorRequest extends FormRequest
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

            "name"            => 'required|string',
            "email"                 => 'nullable|email|unique:users,email,'.$this->vendor,
            "mobile"                => 'required|numeric|unique:users,mobile,'.$this->vendor,
            "image"                 => 'nullable|required_without:_method|image',

        ];


    }

    public function attributes()
    {
        return [
            'name' => __('Name'),
            'email' => __('Email'),
            'password' => __('Password'),
            "id_image"     => __('ID image'),
            "mobile"                => __('Mobile'),
            "image"                 => __('Image'),
            "city_id"               => __('City'),
            "bank_name"               => __('Bank name'),
            "bank_account_number"    => __('Account number'),
            "bank_iban"             => __('IBAN'),
            "transportation_services"   => __('Transportation services'),
            "rent_services"   => __('Rent services'),
            "sell_services"   => __('Sell services'),
            "driving_license_image"   => __('Driving license image'),
            "working_license_image"   => __('Working license image'),
        ];
    }
}
