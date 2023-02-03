<tr>
    <td>{!! $loop->index +1 !!}</td>
    @if($training->image != null)
        <td><img src="{!! url('/').'/'.$training->image !!}" style="width: 300px; "></td>
    @else
        <td>-----</td>
    @endif
    <td>{{$training->title}}</td>
    <td>{{$training->location}}</td>
    <td>{{$training->date}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._image_button',[
                        'route' => route('dashboard.training-images.index',['training_id'=>$training->id]),
                        'tooltip' => __('Images'),
                         ])
                @endcomponent
            </div>
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.trainings.show',$training->id),
                        'tooltip' => __('Show '.$training['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.trainings.edit',$training->id),
                        'tooltip' => __('Edit certified trainings'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.trainings.destroy',$training->id),
                        'tooltip' => __('Delete certified trainings'),
                        'id'=>$training->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

