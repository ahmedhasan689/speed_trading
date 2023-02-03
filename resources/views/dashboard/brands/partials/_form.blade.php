@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif


@if(isset($brand->image))
    <div class="col-md-12">
        <img id="image" src="{{url($brand->image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img id="image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Image')}}</label>
    <br>
    {!! Form::file('image',['class'=>'form-control col','placeholder'=>__("Brand image"),'onchange'=>"loadSliderImage(event)"]) !!}
    {{input_error($errors,'image')}}
</div>


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Brand name in English')}}</label>
    <br>
    {!! Form::text('name[en]',($brand ? $brand->getTranslation('name', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Brand name in Arabic')}}</label>
    <br>
    {!! Form::text('name[ar]',($brand ? $brand->getTranslation('name', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name.ar')}}
</div>


@section('footer')
    {{--    <script>--}}
    {{--        CKEDITOR.replace( 'content' );--}}
    {{--    </script>--}}

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
