@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

@if(isset($vendor->image))
    <div class="col-md-12">
        <img id="image" src="{{url($vendor->image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img id="image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label for="image_input"> {{__('Image')}}</label>
    <br>
    {!! Form::file('image',['id'=>'image_input','class'=>'form-control col','placeholder'=>__("Image"),'onchange'=>"loadImage(event)"]) !!}
    {{input_error($errors,'image')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="name"> {{__('Name')}}</label>
    {!! Form::text('name',null,['id'=>'name','class'=>'form-control col','placeholder'=>__("Name"),isset($readOnly)?$readOnly:null,disable_on_show()]) !!}
    {{input_error($errors,'name')}}
</div>


<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Email')}} </label>
    {!! Form::email('email',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'email')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Mobile')}}  {!! label_required() !!}</label>
    {!! Form::text('mobile',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'mobile')}}
</div>



@if(isset($vendor->driving_license_image))
    <div class="col-md-12">
        <img id="driving_license_image" src="{{url($vendor->driving_license_image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img id="driving_license_image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label for="driving_license_image_input"> {{__('Driving license Image')}}</label>
    <br>
    {!! Form::file('driving_license_image',['id'=>'driving_license_image_input','class'=>'form-control col','placeholder'=>__("Image"),'onchange'=>"loadDrivingImage(event)"]) !!}
    {{input_error($errors,'driving_license_image')}}
</div>




@if(isset($vendor->working_license_image))
    <div class="col-md-12">
        <img id="working_license_image" src="{{url($vendor->working_license_image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img id="working_license_image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label for="working_license_image_input"> {{__('Working license Image')}}</label>
    <br>
    {!! Form::file('working_license_image',['id'=>'working_license_image_input','class'=>'form-control col','placeholder'=>__("Image"),'onchange'=>"loadWorkingImage(event)"]) !!}
    {{input_error($errors,'working_license_image')}}
</div>

@section('footer')

    <script>
        var loadImage = function(event) {
            console.log('image')

            var output = document.getElementById('image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

        var loadNationalImage = function(event) {
            console.log('id_image')

            var output = document.getElementById('id_image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

        var loadDrivingImage = function(event) {
            console.log('driving_license_image')

            var output = document.getElementById('driving_license_image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

        var loadWorkingImage = function(event) {
            console.log('working_license_image')

            var output = document.getElementById('working_license_image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

    </script>
@endsection
