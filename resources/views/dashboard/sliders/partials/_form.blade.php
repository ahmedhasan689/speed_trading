@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

@if(isset($slider->image))
    <div class="col-md-12">
        <img class="image-process" id="image" src="{{url($slider->image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img class="image-process" id="image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label class="image-process" for="formInputRole"> {{__('Slider image')}}</label>
    <br>
    {!! Form::file('image',['class'=>'form-control col image-process','placeholder'=>__("Slider image"),'onchange'=>"loadSliderImage(event)"]) !!}
    {{input_error($errors,'image')}}
</div>


<div class="form-group py-1 col-md-12">
    <label for="v_url" class="video-process"> {{__('Video URL')}}  {!! label_required() !!}</label>
    {{Form::text('v_url' ,$slider->image ??null,['class'=>'form-control mb-2 video-process','id'=>'v_url',disable_on_show()])}}
    {{input_error($errors,'v_url')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="type"> {{__('Type')}}  {!! label_required() !!}</label>
    {{Form::select('type',['image'=>__('image'),'video'=>__('Video')] ,null,['class'=>'form-control mb-2','id'=>'type','required',disable_on_show(),'onchange'=>"loadUrl()"])}}
    {{input_error($errors,'type')}}
</div>


<div class="form-group py-1 col-md-12 target">
    <label for="target_type"> {{__('Target type')}}  {!! label_required() !!}</label>
    {{Form::select('target_type',[
'events'=>__('Event'),
'items'=>__('Item'),
'jobs'=>__('Job'),
'rooms'=>__('Room'),
'solutions'=>__('Solution'),
'speed_trainings'=>'Speed training',
'trainings'=>__('Training')
] ,null,['class'=>'form-control mb-2','id'=>'target_type','required',disable_on_show()])}}
    {{input_error($errors,'target_type')}}
</div>

<div class="form-group py-1 col-md-12 target">
    <label for="target_id"> {{__('Target')}}  {!! label_required() !!}</label>
    {{Form::select('target_id',[] ,null,['class'=>'form-control mb-2','id'=>'target_id','required',disable_on_show()])}}
    {{input_error($errors,'target_id')}}
</div>



@section('footer')
{{--    <script>--}}
{{--        CKEDITOR.replace( 'content' );--}}
{{--    </script>--}}

<script>
    console.log('out')

    $( document ).ready(function() {
        var type = $('#type').val();
        console.log('1')
        if(type === 'image'){
            console.log('2')
            $('.target').show();
        }else{
            console.log('3')
            $('.target').hide();
        }
    });
    console.log('4')

    var loadUrl = function() {
        var type = $('#type').val();

        if(type === 'image'){
            console.log('2')
            $('.target').show();
            $('.image-process').show();
            $('.video-process').hide();
        }else{
            console.log('3')
            $('.target').hide();

            $('.image-process').hide();
            $('.video-process').show();
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

<script>
    $(document).ready(function () {
        var targetType = $('#target_type').val();
        console.log(targetType);
        $.ajax({
            url: '{{route('dashboard.targets')}}',
            type: 'GET',
            data: {
                "_token": "{{ csrf_token() }}",
                "target_type": targetType
            },
            success: function (data) {
                console.log(data)
                $("#target_id option").remove();
                $.each( data, function(k, v) {
                    $('#target_id').append($('<option>', {value:k, text:v}));
                });
            }
        });

    });
    $('#target_type').change(function () {
        var targetType = $(this).val();
        $.ajax({
            url: '{{route('dashboard.targets')}}',
            type: 'GET',
            data: {
                "_token": "{{ csrf_token() }}",
                "target_type": targetType
            },
            success: function (data) {
                console.log(data)
                $("#target_id option").remove();
                $.each( data, function(k, v) {
                    $('#target_id').append($('<option>', {value:k, text:v}));
                });
            }
        });
    });
</script>
@endsection
