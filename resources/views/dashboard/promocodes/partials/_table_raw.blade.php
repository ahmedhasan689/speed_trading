<tr>
    <td>{!! $loop->index +1 !!}</td>
    <td> {{$promocode->code}}</td>
    <td> {{$promocode->percent}} {{__('%')}}</td>
    <td> {{$promocode->from_date}}</td>
    <td> {{$promocode->to_date}}</td>
    <td> {{$promocode->to_use}}</td>
    <td> {{$promocode->used}}</td>
    <td> {{$promocode->to_use - $promocode->used}}</td>
    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

{{--            <div class="btn-group" role="group">--}}
{{--                @component('dashboard.layouts.partials.buttons._show_button',[--}}
{{--                        'route' => route('dashboard.promocodes.show',$promocode->id),--}}
{{--                        'tooltip' => __('Show '.$promocode['name']),--}}
{{--                         ])--}}
{{--                @endcomponent--}}
{{--            </div>--}}

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.promocodes.edit',$promocode->id),
                        'tooltip' => __('Edit promocode'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.promocodes.destroy',$promocode->id),
                        'tooltip' => __('Delete promocode'),
                        'id'=>$promocode->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

