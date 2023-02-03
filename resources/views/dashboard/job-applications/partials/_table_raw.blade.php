<tr>
    <td>{!! $loop->index +1 !!}</td>
    <td>{{optional($application->job)->title}}</td>
    <td>{{$application->name}}</td>
    <td>{{$application->age}}</td>
    <td>{{$application->degree}}</td>
    <td>{{$application->phone}}</td>
    <td>{{$application->email}}</td>
    <td>{{optional($application->city)->name}}</td>
    <td><a class="btn btn-success" href="{{url($application->cv)}}"> <i class="fa fa-file"></i></a></td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">
            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.job-applications.destroy',$application->id),
                        'tooltip' => __('Delete job'),
                        'id'=>$application->id
                         ])
                @endcomponent
            </div>


        </div>

    </td>
</tr>

