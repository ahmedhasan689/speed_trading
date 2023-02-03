<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Training')}}</th>
        <th scope="col">{{__('User')}}</th>
        <th scope="col">{{__('Status')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($trainings as $training)
        @include('dashboard.training-reservations.partials._table_raw')
    @endforeach
    </tbody>

</table>
{{ $trainings->links() }}

