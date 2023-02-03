<div class="form-group py-1 col-md-6">
    <label for="name"> {{__('Name')}} </label>
    {!! Form::text('name',request()->name ??null,['id'=>'name','class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name')}}
</div>


<div class="form-group py-1 col-md-6">
    <label for="event_id"> {{__('Event')}} </label>
    {!! Form::select('event_id',\App\Models\Event::all()->pluck('title','id'),request()->event_id ??null,['id'=>'event_id','class'=>'form-control select2 col',disable_on_show()]) !!}
    {{input_error($errors,'event_id')}}
</div>

