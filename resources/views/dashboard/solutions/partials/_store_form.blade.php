@if($errors->any() && (env('APP_DEBUG') == 'true'))
    {!! implode('', $errors->all('<div>:message</div>')) !!}
@endif


@if(isset($solution->image))
    <div class="col-md-12">
        <img id="image" src="{{url($solution->image)}}" style="width: 100px;border-radius: 50px;">
    </div>
@else
    <div class="col-md-12">
        <img id="image" style="width: 100px;border-radius: 50px;">
    </div>
@endif

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Image')}}</label>
    <br>
    {!! Form::file('image',['class'=>'form-control col','placeholder'=>__("Solution image"),'onchange'=>"loadSliderImage(solution)"]) !!}
    {{input_error($errors,'image')}}
</div>


<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in English')}}</label>
    <br>
    {!! Form::text('title[en]',($solution ? $solution->getTranslation('title', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.en')}}
</div>

<div class="form-group py-1 col-md-12">
    <label for="formInputRole"> {{__('Title in Arabic')}}</label>
    <br>
    {!! Form::text('title[ar]',($solution ? $solution->getTranslation('title', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'title.ar')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in English')}}</label>
    <br>
    {!! Form::textarea('content[en]',($solution ? $solution->getTranslation('content', 'en') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.en')}}
</div>

<div class="form-group py-1 col-md-6">
    <label for="formInputRole"> {{__('Content in Arabic')}}</label>
    <br>
    {!! Form::textarea('content[ar]',($solution ? $solution->getTranslation('content', 'ar') : null),['class'=>'form-control col',disable_on_show()]) !!}
    {{input_error($errors,'content.ar')}}
</div>
<div class="form-group py-1 col-md-12">
    <label for="item_id"> {{__('Item ')}}  {!! label_required() !!}</label>
    {{Form::select('item_id[]',\App\Models\Item::all()->pluck('name','id') ,null,['placeholder'=>__('Select category'),"required","multiple",'class'=>'form-control mb-2 select2','id'=>'item_id',disable_on_show()])}}
    {{input_error($errors,'item_id')}}
</div>



@section('footer')
        <script>
            CKEDITOR.replace( 'content' );
        </script>

    <script>
        console.log('out')

        var loadSliderImage = function(solution) {
            console.log('image')

            var output = document.getElementById('image');
            output.src = URL.createObjectURL(solution.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };

    </script>
@endsection
