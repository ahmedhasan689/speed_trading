@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('job title in English')}}</label>
    <br>
    {!! Form::text('title[en]',($job ? $job->getTranslation('title', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('job title in Arabic')}}</label>
    <br>
    {!! Form::text('title[ar]',($job ? $job->getTranslation('title', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.ar')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('job description in English')}}</label>
    <br>
    {!! Form::textarea('description[en]',($job ? $job->getTranslation('description', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'description.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('job description in Arabic')}}</label>
    <br>
    {!! Form::textarea('description[ar]',($job ? $job->getTranslation('description', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'description.ar')}}
</div>
<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('job notes in English')}}</label>
    <br>
    {!! Form::textarea('notes[en]',($job ? $job->getTranslation('notes', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'notes.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('job notes in Arabic')}}</label>
    <br>
    {!! Form::textarea('notes[ar]',($job ? $job->getTranslation('notes', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'notes.ar')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="job_category_id"> {{__('Category')}}  {!! label_required() !!}</label>
    {{Form::select('job_category_id',\App\Models\JobCategory::all()->pluck('name','id') ,null,['placeholder'=>__('Select category'),"required",'class'=>'form-control mb-2','id'=>'job_category_id',disable_on_show()])}}
    {{input_error($errors,'job_category_id')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="city_id"> {{__('City')}}  {!! label_required() !!}</label>
    {{Form::select('city_id',\App\Models\City::all()->pluck('name','id') ,null,['placeholder'=>__('Select city'),'class'=>'form-control mb-2','id'=>'city_id',disable_on_show()])}}
    {{input_error($errors,'city_id')}}
</div>
