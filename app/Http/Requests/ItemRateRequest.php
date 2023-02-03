<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ItemRateRequest extends FormRequest
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
            'item_id'=>'integer|required',
            'rate'=>'integer|required',
            'comment'=>'string|nullable',
        ];
    }

    public function attributes()
    {
        return [
            'item_id' => __('Item'),
            'rate' => __('Rate'),
            'comment' => __('Comment'),
        ];
    }
}
