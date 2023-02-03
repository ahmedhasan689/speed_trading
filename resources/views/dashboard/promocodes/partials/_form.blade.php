@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Code')}} </label>
    {!! Form::text('code',null,['class'=>' form-control col',disable_on_show()]) !!}
    {{input_error($errors,'code')}}
</div>
<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Percent')}} </label>
    {!! Form::number('percent',null,['class'=>' form-control col',disable_on_show()]) !!}
    {{input_error($errors,'percent')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('From date')}} </label>
    {!! Form::text('from_date',null,['class'=>'datepicker form-control col',disable_on_show()]) !!}
    {{input_error($errors,'from_date')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('To date')}} </label>
    {!! Form::text('to_date',null,['class'=>'datepicker form-control col',disable_on_show()]) !!}
    {{input_error($errors,'to_date')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Number to use')}} </label>
    {!! Form::number('to_use',null,['step'=>1,'class'=>' form-control col',disable_on_show()]) !!}
    {{input_error($errors,'to_use')}}
</div>
