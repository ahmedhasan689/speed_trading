<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('Name')}}</th>
        <th scope="col">{{__('Email')}}</th>
        <th scope="col">{{__('Mobile')}}</th>
        <th scope="col">{{__('Points')}}</th>
        <th scope="col">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($clients as $client)
        @include('dashboard.clients.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('Email')}}</th>
        <th scope="col">{{__('Mobile')}}</th>
        <th scope="col">{{__('Points')}}</th>
        <th scope="col">{{__('Options')}}</th>
    </tr>
    </tfoot>
</table>

{{$clients->appends(request()->except('page'))->links()}}
