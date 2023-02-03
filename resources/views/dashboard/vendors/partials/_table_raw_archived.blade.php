<tr>
    <td>{{ ($vendors ->currentpage()-1) * $vendors ->perpage() + $loop->index + 1 }}</td>
    <td>{!! $vendor->name !!}</td>
    <td>{!! $vendor->email !!}</td>
    <td>{!! $vendor->mobile !!}</td>
    <td>{!! optional($vendor->city)->name !!}</td>
    <td>
        @component('dashboard.layouts.partials.buttons._restore_button',[
                                'id'=>$vendor->id,
                                'route' => route('dashboard.restore-vendor',$vendor->id) ,
                                'tooltip' => __('Restore'),
                                 ])
        @endcomponent

    </td>
</tr>

