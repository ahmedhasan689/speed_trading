<tr>
    <td>{!! $loop->index +1 !!}</td>
    <td>{!! optional($order->user)->name !!}</td>
{{--    <td>{!! optional($order->provider)->name !!}</td>--}}
{{--    <td>{!! optional($order->equipmentUser)->name !!}</td>--}}
    <td>{!! $order->price !!}</td>
    <td>{!! $order->status !!}</td>
    <td>{!! $order->payment_method !!}</td>
    <td>


        @switch($order->status)
            @case('new')
            @component('dashboard.layouts.partials.buttons._confirmed_order_button',['id' => $order->id])@endcomponent
            @component('dashboard.layouts.partials.buttons._cancelled_order_button',['id' => $order->id])@endcomponent
            @break

            @case('confirmed')
            @component('dashboard.layouts.partials.buttons._shipping_order_button',['id' => $order->id])@endcomponent
            @component('dashboard.layouts.partials.buttons._cancelled_order_button',['id' => $order->id])@endcomponent
            @break

            @case('shipped')
            @component('dashboard.layouts.partials.buttons._finished_order_button',['id' => $order->id])@endcomponent
            @component('dashboard.layouts.partials.buttons._cancelled_order_button',['id' => $order->id])@endcomponent
            @break


            @endswitch


    </td>
    <td>
        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.orders.show',$order->id),
                        'tooltip' => __('Show'),
                         ])
                @endcomponent
            </div>

        </div>



    </td>
</tr>

