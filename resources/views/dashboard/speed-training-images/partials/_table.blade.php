<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('training')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($images as $image)
        @include('dashboard.speed-training-images.partials._table_raw')
    @endforeach
    </tbody>

</table>
{{ $images->links() }}
