<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Image')}}</th>
        <th scope="col">{{__('Title')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($rooms as $room)
        @include('dashboard.rooms.partials._table_raw')
    @endforeach
    </tbody>

</table>
{{ $rooms->links() }}

