<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('Name')}}</th>

        <th scope="col">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($vendors as $vendor)
        @include('dashboard.vendors.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('Name')}}</th>

        <th scope="col">{{__('Options')}}</th>
    </tr>
    </tfoot>
</table>

{{$vendors->appends(request()->except('page'))->links()}}
