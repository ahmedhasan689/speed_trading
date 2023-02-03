<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RoomRequest extends FormRequest
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
            'title.en'=>'required|string',
            'title.ar'=>'required|string',
            'content.en'=>'required|string',
            'content.ar'=>'required|string',

        ];
    }

    public function attributes()
    {
        return [
            'title' => __('Title'),
            'content' => __('Content'),
        ];
    }
}
