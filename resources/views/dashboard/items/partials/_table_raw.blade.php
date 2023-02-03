<tr>
    <td>{!! $loop->index +1 !!}</td>

    <td>{{$item->getTranslation('name', 'ar')}}</td>
    <td>{{$item->getTranslation('name', 'en')}}</td>
    <td>{{optional($item->category)->name}}</td>
    <td>{{optional($item->brand)->name}}</td>
    <td>@if($item->user_manual && $item->user_manual != '' && $item->user_manual!=null)<a class="btn btn-success btn-sm " href="{{url($item->user_manual)}}"><i class="fa fa-file-pdf-o"></i></a>@else ---- @endif</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._image_button',[
                        'route' => route('dashboard.item-images.index',['item_id'=>$item->id]),
                        'tooltip' => __('Images'),
                         ])
                @endcomponent
            </div>
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.items.show',$item->id),
                        'tooltip' => __('Show '.$item['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.items.edit',$item->id),
                        'tooltip' => __('Edit item'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.items.destroy',$item->id),
                        'tooltip' => __('Delete item'),
                        'id'=>$item->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

