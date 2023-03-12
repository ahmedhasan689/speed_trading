@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in English')}}</label>
    <br>
    {!! Form::text('title[en]',($event ? $event->getTranslation('title', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in Arabic')}}</label>
    <br>
    {!! Form::text('title[ar]',($event ? $event->getTranslation('title', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.ar')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in English')}}</label>
    <br>
    {!! Form::textarea('content[en]',($event ? $event->getTranslation('content', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in Arabic')}}</label>
    <br>
    {!! Form::textarea('content[ar]',($event ? $event->getTranslation('content', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.ar')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{ __('Location') }}</label>
    <br>
    {!! Form::text('location', null,[ 'class'=>'form-control col', disable_on_show()]) !!}
    {{ input_error($errors,'location' )}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Date')}}</label>
    <br>
    {!! Form::text('date', null,['class'=>'form-control col datepicker',disable_on_show()]) !!}
    {{input_error($errors,'date')}}
</div>


@section('footer')
    <script>
        CKEDITOR.replace( 'content' );
    </script>

    <script>
        console.log('out')

        var loadSliderImage = function(event) {
            console.log('image')

            var output = document.getElementById('image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

    </script>
@endsection
