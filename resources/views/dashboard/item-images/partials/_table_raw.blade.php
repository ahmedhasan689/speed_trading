<tr>
    <td>{!! $loop->index +1 !!}</td>
    <td><img src="{!! url('/').'/'.$image->url !!}" style="width: 300px; "></td>
    <td>{{optional($image->item)->name}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.item-images.edit',$image->id),
                        'tooltip' => __('Edit item-image'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.item-images.destroy',$image->id),
                        'tooltip' => __('Delete item-image'),
                        'id'=>$image->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

