<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('created at')}}</th>
        <th scope="col">{{__('Title')}}</th>
        <th scope="col">{{__('Message')}}</th>
    </thead>
    <tbody>
    @foreach($notifications as $notification)
        @include('dashboard.notifications.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('created at')}}</th>
        <th scope="col">{{__('Title')}}</th>
        <th scope="col">{{__('Message')}}</th>
    </tr>
    </tfoot>
</table>
{{ $notifications->links() }}

