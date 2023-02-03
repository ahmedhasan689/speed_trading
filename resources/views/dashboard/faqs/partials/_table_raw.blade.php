<tr>
    <td>{!! $loop->index +1 !!}</td>

    <td>{{$faq->question}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.faqs.show',$faq->id),
                        'tooltip' => __('Show '.$faq['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.faqs.edit',$faq->id),
                        'tooltip' => __('Edit room'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.faqs.destroy',$faq->id),
                        'tooltip' => __('Delete room'),
                        'id'=>$faq->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

