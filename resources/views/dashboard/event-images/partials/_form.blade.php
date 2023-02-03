@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

@if(isset($image->url))
    <div class="col-md-12">
        <img class="image-process" id="image" src="{{url($image->url)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img class="image-process" id="image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label class="image-process" for="formInputRole"> {{__('Image')}}</label>
    <br>
    {!! Form::file('url',['class'=>'form-control col image-process','placeholder'=>__("Image"),'onchange'=>"loadSliderImage(event)"]) !!}
    {{input_error($errors,'image')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="v_url" class="video-process"> {{__('Video URL')}}  {!! label_required() !!}</label>
    {{Form::text('v_url' ,$image->url ??null,['class'=>'form-control mb-2 video-process','id'=>'v_url',disable_on_show()])}}
    {{input_error($errors,'v_url')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="type"> {{__('Type')}}  {!! label_required() !!}</label>
    {{Form::select('type',['image'=>__('image'),'video'=>__('Video')] ,null,['class'=>'form-control mb-2','id'=>'type','required',disable_on_show(),'onchange'=>"loadUrl()"])}}
    {{input_error($errors,'type')}}
</div>


@section('footer')
    {{--    <script>--}}
    {{--        CKEDITOR.replace( 'content' );--}}
    {{--    </script>--}}

    <script>

        $( document ).ready(function() {
            var type = $('#type').val();

            if(type === 'image'){
                $('.video-process').hide().prop('disabled', true);
                $('.image-process').show().prop('disabled', false);
            }else{
                $('.video-process').show().prop('disabled', false);
                $('.image-process').hide().prop('disabled', true);
            }
        });


        var loadUrl = function() {
            var type = $('#type').val();

            if(type === 'image'){
                $('.video-process').hide().prop('disabled', true);
                $('.image-process').show().prop('disabled', false);
            }else{
                $('.video-process').show().prop('disabled', false);
                $('.image-process').hide().prop('disabled', true);
            }

        };


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
