@extends('dashboard.layouts.app')
@section('title'){!! __('Provider') !!}@endsection
@section('header')@endsection
@section('breadcrumb')
    @include('dashboard.layouts.partials._breadcrumb',[
    'route'=>route('dashboard.providers.index'),
    'level'=>'Providers'
    ])
@endsection
{{--@section('btn')--}}
{{--        @include('dashboard.layouts.partials._add_icon',['route'=>'providers','name'=>__('Add new provider')])--}}
{{--@endsection--}}
@section('content')
    <section id="column-selectors">

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{__('Filter')}}</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            {!! Form::open(['method'=>'get','class'=>'form','enctype' => 'multipart/form-data']) !!}
                            <div class="row">
                                @include('dashboard.providers.partials._form_filter')
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary   waves-effect waves-light">{{__('Filter')}}</button>
                                    <a href="{{route('dashboard.providers.index')}}" class="  ml-1 btn btn-warning  waves-effect waves-light">{{__('Reset filter')}}</a>
                                </div>
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">@yield('title')</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                @include('dashboard.providers.partials._table')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

