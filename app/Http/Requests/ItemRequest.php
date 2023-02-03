<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ItemRequest extends FormRequest
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
            'name.en' => 'required|string',
            'name.ar' => 'required|string',
            'brand_id'=>'required|integer',
            'category_id'=>'required|integer',
            'points_to_gain'=>'required|integer',
            'point_to_get'=>'required|integer',
            'part_number'=>'required|string',
            'user_manual'=>'nullable|file|mimes:jpg,bmp,png,pdf,doc,docx|max:10240',
            'price'=>'required|numeric'
        ];
    }

    public function attributes()
    {
        return [
            'name.ar' => __('Name in Arabic'),
            'name.en' => __('Name in English'),
        ];
    }
}
