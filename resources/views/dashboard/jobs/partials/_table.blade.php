<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Title')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($jobs as $job)
        @include('dashboard.jobs.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Title')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </tr>
    </tfoot>
</table>
{{ $jobs->links() }}

