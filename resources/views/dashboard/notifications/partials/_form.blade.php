


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title')}}</label>
    <br>
    {!! Form::text('title',null,['class'=>'form-control col',disable_on_show(),'required']) !!}
    {{input_error($errors,'title')}}
</div>


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Message')}}</label>
    <br>
    {!! Form::textarea('message',null,['class'=>'form-control col',disable_on_show(),'required']) !!}
    {{input_error($errors,'message')}}
</div>


