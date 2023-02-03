<tr>
    <td>{!! $loop->index +1 !!}</td>

    <td>{{optional($event->event)->title}}</td>
    <td>{{optional($event->user)->name}}</td>
    <td>{{__($event->status)}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.events.show',$event->id),
                        'tooltip' => __('Show '.$event['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.event-reservations.edit',$event->id),
                        'tooltip' => __('Edit event'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.event-reservations.destroy',$event->id),
                        'tooltip' => __('Delete event'),
                        'id'=>$event->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

