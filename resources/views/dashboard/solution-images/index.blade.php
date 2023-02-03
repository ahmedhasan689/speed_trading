@extends('dashboard.layouts.app')
@section('title'){!! __('Images') !!}@endsection
@section('header')@endsection

@section('breadcrumb')
    @include('dashboard.layouts.partials._breadcrumb',[
    'route'=>route('dashboard.solution-images.index'),
    'level'=>'Solution images'
    ])
@endsection
@section('btn')
    @include('dashboard.layouts.partials._add_icon',['route'=>'solution-images','id'=>request()->solution_id,'name'=>__('Add new image')])
@endsection
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
                            <div class="table-responsive">
                                @include('dashboard.solution-images.partials._table')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
