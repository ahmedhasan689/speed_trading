<div class="form-group py-1 col-md-6">
    <label for="name"> {{__('Name')}} </label>
    {!! Form::text('name',request()->name ??null,['id'=>'name','class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name')}}
</div>


<div class="form-group py-1 col-md-6">
    <label for="speed_training_id"> {{__('Speed training')}} </label>
    {!! Form::select('speed_training_id',\App\Models\SpeedTraining::all()->pluck('title','id'),request()->speed_training_id ??null,['id'=>'speed_training_id','class'=>'form-control select2 col',disable_on_show()]) !!}
    {{input_error($errors,'speed_training_id')}}
</div>

