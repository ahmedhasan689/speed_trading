<tr>
    <td>{!! $loop->index +1 !!}</td>
    @if($solution->image != null)
        <td><img src="{!! url('/').'/'.$solution->image !!}" style="width: 300px; "></td>
    @else
        <td>-----</td>
    @endif
    <td>{{$solution->title}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._image_button',[
                        'route' => route('dashboard.solution-images.index',['solution_id'=>$solution->id]),
                        'tooltip' => __('Images'),
                         ])
                @endcomponent
            </div>
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.solutions.show',$solution->id),
                        'tooltip' => __('Show '.$solution['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.solutions.edit',$solution->id),
                        'tooltip' => __('Edit solution'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.solutions.destroy',$solution->id),
                        'tooltip' => __('Delete solution'),
                        'id'=>$solution->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

