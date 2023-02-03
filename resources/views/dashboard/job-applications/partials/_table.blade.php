<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Job')}}</th>
        <th scope="col">{{__('Name')}}</th>
        <th scope="col">{{__('Age')}}</th>
        <th scope="col">{{__('Degree')}}</th>
        <th scope="col">{{__('Phone')}}</th>
        <th scope="col">{{__('Email')}}</th>
        <th scope="col">{{__('City')}}</th>
        <th scope="col">{{__('CV')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </tr>
    </thead>
    <tbody>
    @foreach($applications as $application)
        @include('dashboard.job-applications.partials._table_raw')
    @endforeach
    </tbody>

</table>
{{ $applications->links() }}

