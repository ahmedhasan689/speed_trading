<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ApiJobRequest extends FormRequest
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
            'job_id'=>'required',
            'name'=>'required|string',
            'phone'=>'required|numeric',
            'email'=>'required|email',
            'age'=>'required|integer',
            'degree'=>'required|string',
            'city_id'=>'required',
            'cv'=>'required|file|mimes:pdf,doc,docx'
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
