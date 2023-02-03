@extends('dashboard.layouts.app')
@section('title'){!! __('Edit role') !!}@endsection
@section('header')@endsection

{{--@section('breadcrumb')--}}
{{--    @include('dashboard.layouts.partials._breadcrumb',[--}}
{{--    'route'=>route('dashboard.roles.index'),--}}
{{--    'level'=>'Sliders'--}}
{{--    ])--}}
{{--@endsection--}}
@section('content')
    <section id="column-selectors">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">@yield('title')</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            {!! Form::model($role,['method'=>'put','route'=>['dashboard.roles.update',$role->id],'class'=>'form','enctype' => 'multipart/form-data']  ) !!}
                            @csrf()
                            <div class="row">
                                @include('dashboard.roles.partials._form')
                                @component('dashboard.layouts.partials.buttons._save_button',[])
                                @endcomponent
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
