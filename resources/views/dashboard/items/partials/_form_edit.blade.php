@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif



<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Item name in English')}}</label>
    <br>
    {!! Form::text('name[en]',($item ? $item->getTranslation('name', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Item name in Arabic')}}</label>
    <br>
    {!! Form::text('name[ar]',($item ? $item->getTranslation('name', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'name.ar')}}
</div>
<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Price')}}</label>
    <br>
    {!! Form::number('price',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'price')}}
</div>
<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Old price - if exist')}}</label>
    <br>
    {!! Form::number('old_price',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'old_price')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Part number')}}</label>
    <br>
    {!! Form::text('part_number',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'part_number')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="brand_id"> {{__('Brand')}}  {!! label_required() !!}</label>
    {{Form::select('brand_id',\App\Models\Brand::all()->pluck('name','id') ,null,['placeholder'=>__('Select brand'),'class'=>'form-control mb-2','id'=>'brand_id',disable_on_show()])}}
    {{input_error($errors,'brand_id')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="main_category_id"> {{__('Category')}}  {!! label_required() !!}</label>
    {{Form::select('main_category_id',\App\Models\Category::where('upper_id', null)->get()->pluck('name','id') ,$mainCategoryID ??null,['placeholder'=>__('Select category'),'class'=>'form-control mb-2','id'=>'main_category_id',disable_on_show()])}}
    {{input_error($errors,'main_category_id')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="category_id"> {{__('Sub category')}}  {!! label_required() !!}</label>
    {{Form::select('category_id',[] ,null,['placeholder'=>__('Select sub category'),'class'=>'form-control mb-2','id'=>'category_id',disable_on_show()])}}
    {{input_error($errors,'category_id')}}
</div>


<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Point to gain - when buy the item ')}}</label>
    <br>
    {!! Form::number('points_to_gain',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'points_to_gain')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Point to get - get by client points')}}</label>
    <br>
    {!! Form::number('point_to_get',null,['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'point_to_get')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('User manual')}}</label>
    <br>
    {!! Form::file('user_manual',['class'=>'form-control col','placeholder'=>__("User manual")]) !!}
    {{input_error($errors,'user_manual')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Details in English')}}</label>
    <br>
    {!! Form::textarea('details[en]',($item ? $item->getTranslation('details', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'details.en')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Details in Arabic')}}</label>
    <br>
    {!! Form::textarea('details[ar]',($item ? $item->getTranslation('details', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'details.ar')}}
</div>

<div class="clearfix"></div>
<hr>

{{--<div class="clearfix"></div>--}}
{{--<div class="col-md-12">--}}
{{--<h3>{{__('Compare section ')}}</h3>--}}
{{--</div>--}}
{{--    <br>--}}
{{--<div class="clearfix"></div>--}}
{{--<div class="form-group py-1 col-md-6">--}}
{{--    <label for="formInputRole"> {{__('Image resolution')}}</label>--}}
{{--    <br>--}}
{{--    {!! Form::text('image_resolution',null,['class'=>'form-control col',disable_on_show()]) !!}--}}
{{--    {{input_error($errors,'image_resolution')}}--}}
{{--</div>--}}
{{--<div class="form-group py-1 col-md-6">--}}
{{--    <label for="formInputRole"> {{__('Lens resolution')}}</label>--}}
{{--    <br>--}}
{{--    {!! Form::text('lens_resolution',null,['class'=>'form-control col',disable_on_show()]) !!}--}}
{{--    {{input_error($errors,'lens_resolution')}}--}}
{{--</div>--}}
{{--<div class="form-group py-1 col-md-6">--}}
{{--    <label for="formInputRole"> {{__('Movement')}}</label>--}}
{{--    <br>--}}
{{--    {!! Form::text('movement',null,['class'=>'form-control col',disable_on_show()]) !!}--}}
{{--    {{input_error($errors,'movement')}}--}}
{{--</div>--}}
{{--<div class="form-group py-1 col-md-6">--}}
{{--    <label for="formInputRole"> {{__('Night capturing')}}</label>--}}
{{--    <br>--}}
{{--    {!! Form::text('night_capturing',null,['class'=>'form-control col',disable_on_show()]) !!}--}}
{{--    {{input_error($errors,'night_capturing')}}--}}
{{--</div>--}}
{{--<div class="form-group py-1 col-md-6">--}}
{{--    <label for="formInputRole"> {{__('Recording mode')}}</label>--}}
{{--    <br>--}}
{{--    {!! Form::text('recording_mode',null,['class'=>'form-control col',disable_on_show()]) !!}--}}
{{--    {{input_error($errors,'recording_mode')}}--}}
{{--</div>--}}
{{--<div class="form-group py-1 col-md-6">--}}
{{--    <label for="formInputRole"> {{__('Internal storage')}}</label>--}}
{{--    <br>--}}
{{--    {!! Form::text('internal_storage',null,['class'=>'form-control col',disable_on_show()]) !!}--}}
{{--    {{input_error($errors,'internal_storage')}}--}}
{{--</div>--}}

@section('footer')
    <script>
        CKEDITOR.replace( 'details[en]' );
        CKEDITOR.replace( 'details[ar]' );
    </script>
    <script>
        $(document).ready(function () {
            var mainCategoryID = $('#main_category_id').val();
            console.log(mainCategoryID);
            $.ajax({
                url: '{{route('dashboard.subcategories')}}',
                type: 'GET',
                data: {
                    "_token": "{{ csrf_token() }}",
                    "category_id": mainCategoryID
                },
                success: function (data) {
                    console.log(data)
                    $("#category_id option").remove();
                    $.each( data, function(k, v) {
                        $('#category_id').append($('<option>', {value:k, text:v}));
                    });
                }
            });

        });
        $('#main_category_id').change(function () {
            var mainCategoryID = $(this).val();
            $.ajax({
                url: '{{route('dashboard.subcategories')}}',
                type: 'GET',
                data: {
                    "_token": "{{ csrf_token() }}",
                    "category_id": mainCategoryID
                },
                success: function (data) {
                    console.log(data)
                    $("#category_id option").remove();
                    $.each( data, function(k, v) {
                        $('#category_id').append($('<option>', {value:k, text:v}));
                    });
                }
            });
        });
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
