@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('City name in English')}}</label>
    <br>
    {!! Form::text('name[en]',($city ? $city->getTranslation('name', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('City name in Arabic')}}</label>
    <br>
    {!! Form::text('name[ar]',($city ? $city->getTranslation('name', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name.ar')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="upper_id"> {{__('Governorate')}}  {!! label_required() !!}</label>
    {{Form::select('upper_id',\App\Models\City::where('upper_id',null)->get()->pluck('name','id') ,null,['placeholder'=>__('Select governorate'),'class'=>'form-control mb-2','required','id'=>'upper_id',disable_on_show()])}}
    {{input_error($errors,'upper_id')}}
</div>
{{--@include('dashboard.cities.partials.map')--}}
