<tr>
    <td>{{ ($vendors ->currentpage()-1) * $vendors ->perpage() + $loop->index + 1 }}</td>
    @if($vendor->image)
        <td><img src="{!! url('/').'/'.$vendor->image !!}" style="width: 300px; "></td>
    @else
        <td>-----</td>
    @endif
        <td>{!! $vendor->name !!}</td>
    <td>{!! $vendor->company_name !!}</td>

    <td>
        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.vendors.show',$vendor->id),
                        'tooltip' => __('Show').' '.$vendor['name'],
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                            'route' => route('dashboard.vendors.edit',$vendor->id),
                            'tooltip' => __('Edit').' '.$vendor['name'],
                             ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                                'id'=>$vendor->id,
                                'route' => route('dashboard.vendors.destroy',$vendor->id) ,
                                'tooltip' => __('Delete'),
                                 ])
                @endcomponent
            </div>


{{--            <div class="btn-group" role="group">--}}
{{--                @if($vendor->status == \App\Models\User::STATUS_NEW)--}}
{{--                    @component('dashboard.layouts.partials.buttons._suspend',[--}}
{{--                                'id'=>$vendor->id,--}}
{{--                                'route' => route('dashboard.vendors.disapprove',$vendor->id) ,--}}
{{--                                'tooltip' => __('Suspend'),--}}
{{--                                'name' => __('Disapprove'),--}}
{{--                                 ])--}}
{{--                    @endcomponent--}}
{{--                    @component('dashboard.layouts.partials.buttons._activate',[--}}
{{--                        'id'=>$vendor->id,--}}
{{--                        'route' => route('dashboard.vendors.approve',$vendor->id) ,--}}
{{--                        'tooltip' => __('Active'),--}}
{{--                        'name' =>__('Approve')--}}
{{--                         ])--}}
{{--                    @endcomponent--}}
{{--                @endif--}}
{{--            </div>--}}

{{--            <div class="btn-group" role="group">--}}
{{--                @if($vendor->status == \App\Models\User::STATUS_ACTIVE)--}}
{{--                    @component('dashboard.layouts.partials.buttons._suspend',[--}}
{{--                                'id'=>$vendor->id,--}}
{{--                                'route' => route('dashboard.vendors.suspend',$vendor->id) ,--}}
{{--                                'tooltip' => __('Suspend'),--}}
{{--                                'name' => __('Suspend'),--}}
{{--                                 ])--}}
{{--                    @endcomponent--}}
{{--                @elseif($vendor->status == \App\Models\User::STATUS_SUSPEND)--}}
{{--                    @component('dashboard.layouts.partials.buttons._activate',[--}}
{{--                        'id'=>$vendor->id,--}}
{{--                        'route' => route('dashboard.vendors.suspend',$vendor->id) ,--}}
{{--                        'tooltip' => __('Active'),--}}
{{--                        'name' =>__('Active')--}}
{{--                         ])--}}
{{--                    @endcomponent--}}
{{--                @endif--}}
{{--            </div>--}}
        </div>


    </td>
</tr>

