<?php

namespace App\Http\Requests;

use App\Rules\YoutubeURL;
use Illuminate\Foundation\Http\FormRequest;

class SliderRequest extends FormRequest
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
            'image' => 'image',
            'v_url'=> ['nullable','url',
                function ($attribute, $value, $fail) {
                    if (!preg_match('/(youtube.com|youtu.be)\/(watch)?(\?v=)?(\S+)?/', $value)) {
                        $fail(trans("Not youtube link", ["name" => trans("general.url")]));
                    }
                },],
        ];
    }
}
