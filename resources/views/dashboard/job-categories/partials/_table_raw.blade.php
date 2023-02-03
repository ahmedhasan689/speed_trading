<tr>
    <td>{!! $loop->index +1 !!}</td>

    <td>{{$category->getTranslation('name', 'ar')}}</td>
        <td>{{$category->getTranslation('name', 'en')}}</td>

    <td>

        <div class="btn-group" role="group" aria-label="Vertical button group">


            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._edit_button',[
                        'route' => route('dashboard.job-categories.edit',$category->id),
                        'tooltip' => __('Edit category'),
                         ])
                @endcomponent
            </div>

            <div class="btn-group" role="group">
                @component('dashboard.layouts.partials.buttons._delete_button',[
                        'route' => route('dashboard.job-categories.destroy',$category->id),
                        'tooltip' => __('Delete category'),
                        'id'=>$category->id
                         ])
                @endcomponent
            </div>



        </div>

    </td>
</tr>

