<tr>
    <td>{!! $loop->index +1 !!}</td>
    @if($event->image != null)
        <td><img src="{!! url('/').'/'.$event->image !!}" style="width: 300px; "></td>
    @else
        <td>-----</td>
    @endif
    <td>{{$event->title}}</td>
    <td>{{$event->location}}</td>
    <td>{{$event->date}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._image_button',[
                        'route' => route('dashboard.event-images.index',['event_id'=>$event->id]),
                        'tooltip' => __('Images'),
                         ])
                @endcomponent
            </div>
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.events.show',$event->id),
                        'tooltip' => __('Show '.$event['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.events.edit',$event->id),
                        'tooltip' => __('Edit event'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.events.destroy',$event->id),
                        'tooltip' => __('Delete event'),
                        'id'=>$event->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

