<tr>
    <td>{!! $loop->index +1 !!}</td>
        <td>{{$governorate->getTranslation('name', 'ar')}}</td>
        <td>{{$governorate->getTranslation('name', 'en')}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

{{--            <div class="btn-group" role="group">--}}
{{--                @component('dashboard.layouts.partials.buttons._show_button',[--}}
{{--                        'route' => route('dashboard.governorates.show',$governorate->id),--}}
{{--                        'tooltip' => __('Show '.$governorate['name']),--}}
{{--                         ])--}}
{{--                @endcomponent--}}
{{--            </div>--}}

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.governorates.edit',$governorate->id),
                        'tooltip' => __('Edit governorate'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.governorates.destroy',$governorate->id),
                        'tooltip' => __('Delete governorate'),
                        'id'=>$governorate->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

