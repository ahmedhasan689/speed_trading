@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif


@if(isset($training->image))
    <div class="col-md-12">
        <img id="image" src="{{url($training->image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img id="image" style="width: 100px;border-radius: 50px;">
    </div>
@endif


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in English')}}</label>
    <br>
    {!! Form::text('title[en]',($training ? $training->getTranslation('title', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in Arabic')}}</label>
    <br>
    {!! Form::text('title[ar]',($training ? $training->getTranslation('title', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.ar')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in English')}}</label>
    <br>
    {!! Form::textarea('content[en]',($training ? $training->getTranslation('content', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in Arabic')}}</label>
    <br>
    {!! Form::textarea('content[ar]',($training ? $training->getTranslation('content', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.ar')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Location')}}</label>
    <br>
    {!! Form::text('location', null,['class'=>'form-control col','required',disable_on_show()]) !!}
    {{input_error($errors,'location')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Date from')}}</label>
    <br>
    {!! Form::text('date', null,['class'=>'form-control col datepicker',disable_on_show()]) !!}
    {{input_error($errors,'date')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Date to')}}</label>
    <br>

    {!! Form::text('date_to', null,['class'=>'form-control col datepicker',disable_on_show()]) !!}
    {{input_error($errors,'date_to')}}
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
