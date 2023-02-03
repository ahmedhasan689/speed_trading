<tr>
    <td>{!! $loop->index +1 !!}</td>
    @if($room->image != null)
        <td><img src="{!! url('/').'/'.$room->image !!}" style="width: 300px; "></td>
    @else
        <td>-----</td>
    @endif
    <td>{{$room->title}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._image_button',[
                        'route' => route('dashboard.room-images.index',['room_id'=>$room->id]),
                        'tooltip' => __('Images'),
                         ])
                @endcomponent
            </div>
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.rooms.show',$room->id),
                        'tooltip' => __('Show '.$room['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.rooms.edit',$room->id),
                        'tooltip' => __('Edit room'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.rooms.destroy',$room->id),
                        'tooltip' => __('Delete room'),
                        'id'=>$room->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

