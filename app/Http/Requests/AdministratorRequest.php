<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdministratorRequest extends FormRequest
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
            'name' => 'required|string',
            'email' => 'required|email|unique:administrators,id,'.$this->administrator,
            'password' => 'nullable|required_without:_method|confirmed',
            //'image' =>'nullable|image'

        ];
    }

    public function attributes()
    {
        return [
            'name' => __('Name'),
            'email' => __('Email'),
            'password' => __('Password'),
        ];
    }
}
