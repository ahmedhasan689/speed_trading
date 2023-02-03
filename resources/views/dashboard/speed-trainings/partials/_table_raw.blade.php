<tr>
    <td>{!! $loop->index +1 !!}</td>
    @if($training->image != null)
        <td><img src="{!! url('/').'/'.$training->image !!}" style="width: 300px; "></td>
    @else
        <td>-----</td>
    @endif
    <td>{{$training->title}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._image_button',[
                        'route' => route('dashboard.speed-training-images.index',['training_id'=>$training->id]),
                        'tooltip' => __('Images'),
                         ])
                @endcomponent
            </div>
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.speed-trainings.show',$training->id),
                        'tooltip' => __('Show '.$training['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.speed-trainings.edit',$training->id),
                        'tooltip' => __('Edit training'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.speed-trainings.destroy',$training->id),
                        'tooltip' => __('Delete training'),
                        'id'=>$training->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

