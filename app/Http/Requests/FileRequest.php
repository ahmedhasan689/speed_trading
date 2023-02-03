<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FileRequest extends FormRequest
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
            // video mimes:mp4,mov,ogg,qt,webm,avi,wmv,flv,mpg,mpeg
            'url'=>'file|mimes:jpg,bmp,png,mp4,mov,ogg,qt,webm,avi,wmv,flv,mpg,mpeg|max:10240',
            'v_url'=>['url',
                function ($attribute, $value, $fail) {
                    if (!preg_match('/(youtube.com|youtu.be)\/(watch)?(\?v=)?(\S+)?/', $value)) {
                        $fail(trans("Not youtube link", ["name" => trans("general.url")]));
                    }
                },],

        ];
    }


}
