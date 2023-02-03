<tr>
    <td>{!! $loop->index +1 !!}</td>
    @if($image->type == 'image')
        <td><img src="{!! url('/').'/'.$image->url !!}" style="width: 300px; "></td>
    @else
        <td><a href="{{$image->url}}" class="btn btn-danger "><i class="fa fa-file-video-o"></i></a></td>
    @endif
    <td>{{optional($image->training)->title}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.speed-training-images.edit',$image->id),
                        'tooltip' => __('Edit training-image'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboards.speed-training-images.destroy',$image->id),
                        'tooltip' => __('Delete training-image'),
                        'id'=>$image->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

