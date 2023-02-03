@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

<div class="form-group py-1 col-md-12">
    <label for="training_id"> {{__('Training')}}  {!! label_required() !!}</label>
    {{Form::select('training_id',\App\Models\Training::pluck('title','id') ,null,['class'=>'form-control mb-2','id'=>'training_id',disable_on_show()])}}
    {{input_error($errors,'training_id')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="user_id"> {{__('Name')}}  {!! label_required() !!}</label>
    {{Form::select('user_id',\App\Models\User::pluck('name','id') ,null,['class'=>'form-control mb-2','id'=>'user_id',disable_on_show()])}}
    {{input_error($errors,'user_id')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="status"> {{__('Status')}}  {!! label_required() !!}</label>
    {{Form::select('status',['new'=>__('New'),'cancelled'=>__('Cancelled')] ,null,['class'=>'form-control mb-2','id'=>'status',disable_on_show()])}}
    {{input_error($errors,'status')}}
</div>



<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Cancel reason - if exist')}}</label>
    <br>
    {!! Form::textarea('cancel_reason', null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'cancel_reason')}}
</div>


@section('footer')
    <script>
        CKEDITOR.replace( 'content' );
    </script>

    <script>
        console.log('out')

        var loadSliderImage = function(training) {
            console.log('image')

            var output = document.getElementById('image');
            output.src = URL.createObjectURL(training.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory

            }
        };

    </script>
@endsection
