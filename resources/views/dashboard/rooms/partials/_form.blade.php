@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in English')}}</label>
    <br>
    {!! Form::text('title[en]',($room ? $room->getTranslation('title', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in Arabic')}}</label>
    <br>
    {!! Form::text('title[ar]',($room ? $room->getTranslation('title', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.ar')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in English')}}</label>
    <br>
    {!! Form::textarea('content[en]',($room ? $room->getTranslation('content', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in Arabic')}}</label>
    <br>
    {!! Form::textarea('content[ar]',($room ? $room->getTranslation('content', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.ar')}}
</div>


@section('footer')
    <script>
        CKEDITOR.replace( 'content' );
    </script>

    <script>
        console.log('out')

        var loadSliderImage = function(room) {
            console.log('image')

            var output = document.getElementById('image');
            output.src = URL.createObjectURL(room.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

    </script>
@endsection
