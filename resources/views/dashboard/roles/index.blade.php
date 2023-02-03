@extends('dashboard.layouts.app')

@section('title', 'ادوار المستخدمين')

@section('content')
    <section id="column-selectors">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">@yield('title')</h4>
                        <a href="{{route('dashboard.roles.create')}}" class="btn btn-outline-success btn-sm success"> {{__('Add new role')}}</a>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                @include('dashboard.roles.partials._table')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
