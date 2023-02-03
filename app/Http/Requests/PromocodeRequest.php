<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PromocodeRequest extends FormRequest
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
            'code'=>'required|string',
            'percent'=>'required|numeric|min:0|max:100',
            'from_date'=>'required|date',
            'to_date'=>'required|date',
            'to_use'=>'required|integer',
        ];
    }

    public function attributes()
    {
        return [

            'code' => __('Code'),
            'percent' => __('Percent'),
            'from_date' => __('From date'),
            'to_date' => __('To date'),
            'to_use' => __('numbers of use'),
        ];
    }
}
