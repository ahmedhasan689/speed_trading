<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Name in Arabic')}}</th>
        <th scope="col">{{__('Name in English')}}</th>
        <th scope="col">{{__('Category')}}</th>
        <th scope="col">{{__('Brand')}}</th>
        <th scope="col">{{__('User manual')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($items as $item)
        @include('dashboard.items.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Name in Arabic')}}</th>
        <th scope="col">{{__('Name in English')}}</th>
        <th scope="col">{{__('Category')}}</th>
        <th scope="col">{{__('Brand')}}</th>
        <th scope="col">{{__('User manual')}}</th>
        <th scope="col">{{__('Options')}}</th>
    </tr>
    </tfoot>
</table>
{{ $items->appends(request()->except('page'))->links() }}

