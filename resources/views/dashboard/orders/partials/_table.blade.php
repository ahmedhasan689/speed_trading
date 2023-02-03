<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Client')}}</th>
        <th scope="col">{{__('Total price')}}</th>
        <th scope="col">{{__('Status')}}</th>
        <th scope="col">{{__('Payment method')}}</th>
        <th scope="col">{{__('Change status')}}</th>
        <th scope="col">{{__('Options')}}</th>
    </tr>
    </thead>
    <tbody>
    @foreach($orders as $order)
        @include('dashboard.orders.partials._table_raw')
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Client')}}</th>
        <th scope="col">{{__('Total price')}}</th>
        <th scope="col">{{__('Status')}}</th>
        <th scope="col">{{__('Payment method')}}</th>
        <th scope="col">{{__('Change status')}}</th>

        <th scope="col">{{__('Options')}}</th>

    </tr>
    </tfoot>
</table>

{{ $orders->links() }}
