<tr>
    <td>{!! $loop->index +1 !!}</td>

    <td>{{$job->title}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._show_button',[
                        'route' => route('dashboard.jobs.show',$job->id),
                        'tooltip' => __('Show '.$job['name']),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.jobs.edit',$job->id),
                        'tooltip' => __('Edit job'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.jobs.destroy',$job->id),
                        'tooltip' => __('Delete job'),
                        'id'=>$job->id
                         ])
                @endcomponent
            </div>


        </div>

    </td>
</tr>

