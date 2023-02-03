<div class="form-group py-1 col-md-6">
    <label for="name"> {{__('Name')}} </label>
    {!! Form::text('name',request()->name ??null,['id'=>'name','class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name')}}
</div>


<div class="form-group py-1 col-md-6">
    <label for="training_id"> {{__('Training')}} </label>
    {!! Form::select('training_id',\App\Models\Training::all()->pluck('title','id'),request()->training_id ??null,['id'=>'training_id','class'=>'form-control select2 col',disable_on_show()]) !!}
    {{input_error($errors,'training_id')}}
</div>

