<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('Title')}}</th>
        <th scope="col">{{__('Location')}}</th>
        <th scope="col">{{__('Date')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($events as $event)
        @include('dashboard.events.partials._table_raw')
    @endforeach
    </tbody>

</table>
{{ $events->links() }}

