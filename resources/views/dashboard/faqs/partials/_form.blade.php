@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Question')}}</label>
    <br>
    {!! Form::text('question', null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'question')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Answer')}}</label>
    <br>
    {!! Form::textarea('answer', null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'answer')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="language"> {{__('Language')}}  {!! label_required() !!}</label>
    {{Form::select('language',['ar'=>__('Arabic'),'en'=>__('English')] ,null,['placeholder'=>__('Select language'),'class'=>'form-control mb-2','required','id'=>'language',disable_on_show()])}}
    {{input_error($errors,'language')}}
</div>

