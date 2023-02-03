@extends('dashboard.layouts.app')
@section('title'){!! __('Create solution image') !!}@endsection
@section('header')@endsection

@section('breadcrumb')
    @include('dashboard.layouts.partials._breadcrumb',[
    'route'=>route('dashboard.solution-images.index',request()->solution_id),
    'level'=>'images'
    ])
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
                            {!! Form::open(['method'=>'post','route'=>'dashboard.solution-images.store','class'=>'form','enctype' => 'multipart/form-data']) !!}
                            @csrf()
                            <div class="row">
                                <input type="hidden" name="solution_id" value="{{request()->id}}">
                                @include('dashboard.solution-images.partials._form')
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

