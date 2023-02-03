<tr>
    <td>{!! $loop->index +1 !!}</td>

    <td>{{optional($training->training)->title}}</td>
    <td>{{optional($training->user)->name}}</td>
    <td>{{__($training->status)}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.trainings.show',$training->id),
                        'tooltip' => __('Show '.$training['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.training-reservations.edit',$training->id),
                        'tooltip' => __('Edit training'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.training-reservations.destroy',$training->id),
                        'tooltip' => __('Delete training'),
                        'id'=>$training->id
                         ])
                @endcomponent
            </div>

        </div>

    </td>
</tr>

