@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif

@if(isset($user->image))
    <div class="col-md-12">
        <img id="image" src="{{url($user->image)}}" style="width: 100px;border-radius: 50px;">
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

<div class="form-group py-1 col-md-4">
    <label for="formInputRole"> {{__('Mobile')}} </label>
    {!! Form::text('mobile',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'mobile')}}
</div>

<div class="form-group py-1 col-md-6 {{hidden_on_show()}}">
    <label for="formInputRole"> {{__('Password')}} </label>
    {!! Form::password('password',['class'=>'form-control col',]) !!}
    {{input_error($errors,'password')}}
</div>

<div class="form-group py-1 col-md-6 {{hidden_on_show()}}">
    <label for="formInputRole"> {{__('Confirm password')}} </label>
    {!! Form::password('password_confirmation',['class'=>'form-control col',hidden_on_show()]) !!}
    {{input_error($errors,'password_confirmation')}}
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
            console.log('national_id_image')

            var output = document.getElementById('national_id_image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
        var loadLicenseImage = function(event) {
            console.log('car_license_image')

            var output = document.getElementById('car_license_image');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
    </script>
@endsection
