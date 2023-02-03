<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Code')}}</th>
        <th scope="col">{{__('Percent')}}</th>
        <th scope="col">{{__('From date')}}</th>
        <th scope="col">{{__('To date')}}</th>
        <th scope="col">{{__('Number of use')}}</th>
        <th scope="col">{{__('Used')}}</th>
        <th scope="col">{{__('Remaining')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($promocodes as $promocode)
        @include('dashboard.promocodes.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Code')}}</th>
        <th scope="col">{{__('Percent')}}</th>
        <th scope="col">{{__('From date')}}</th>
        <th scope="col">{{__('To date')}}</th>
        <th scope="col">{{__('Number of use')}}</th>
        <th scope="col">{{__('Used')}}</th>
        <th scope="col">{{__('Remaining')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </tr>
    </tfoot>
</table>
{{ $promocodes->links() }}

