<div class="form-group py-1 col-md-6">
    <label for="name"> {{__('Name')}} </label>
    {!! Form::text('name',request()->name ??null,['id'=>'name','class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name')}}
</div>


<div class="form-group py-1 col-md-6">
    <label for="job_id"> {{__('Job')}} </label>
    {!! Form::select('job_id',\App\Models\Job::all()->pluck('title','id'),request()->job_id ??null,['id'=>'job_id','class'=>'form-control select2 col',disable_on_show()]) !!}
    {{input_error($errors,'job_id')}}
</div>

