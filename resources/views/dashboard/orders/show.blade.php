@extends('dashboard.layouts.app')
@section('title'){!! __('Show order') !!}@endsection
@section('header')@endsection

@section('breadcrumb')
    @include('dashboard.layouts.partials._breadcrumb',[
    'route'=>route('dashboard.orders.index'),
    'level'=>'Order'
    ])
@endsection
@section('content')
    <section id="column-selectors">
        <div class="row">
            <div class="col-12">
                <div class="card " >
                    <div class="card-body table-responsive">
                        <div class="table-responsive">
                            <table class="table table-bordered table-lg">
                                <thead>
                                </thead>
                                <tbody>
                                <tr>
                                    <th data-toggle="true" style="width: 150px">@lang('Order ID')</th>
                                    <td>{{ $order->id }}</td>
                                </tr>
                                <tr>
                                    <th data-toggle="true" style="width: 150px">@lang('Order Date')</th>
                                    <td>{{ $order->created_at }}</td>
                                </tr>

                                <tr>
                                    <th data-toggle="true" style="width: 150px">@lang('User')</th>
                                    <td>
                                        <table class="table table-bordered table-sm">
                                            <tr>
                                                <th colspan="4" class="text-center">@lang('Information')</th>
                                            </tr>
                                            <tr>
                                                <th>@lang('User Name')</th>
                                                <th>@lang('User Email')</th>
                                                <th>@lang('User Phone')</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    {{ $order->user->name }}
                                                </td>
                                                <td>
                                                    <a href="mailto:{{ $order->user->email }}">
                                                        {{ $order->user->email }}
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="tele:{{ $order->user->phone }}">
                                                        {{ $order->user->phone }}
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <th data-toggle="true">@lang('Status')</th>
                                    <td>
                                        {{__($order->status)}}
                                    </td>
                                </tr>
                                <tr>
                                    <th data-toggle="true">@lang('Payment Type')</th>
                                    <td>
                                        @lang($order->order_type)
                                    </td>
                                </tr>
                                <tr>
                                    <th data-toggle="true">@lang('Payment Method')</th>
                                    <td style=" position: relative; ">
                                        @lang($order->payment_method)

                                    </td>
                                </tr>

                                <tr>
                                    <th data-toggle="true">@lang('Order Content')</th>
                                    <td>
                                        <table class="table table-bordered table-sm">
                                            <tr>
                                                <th colspan="4" class="text-center">@lang('Items')</th>
                                            </tr>
                                            <tr>
                                                <th>@lang('Name')</th>
                                                <th>@lang('Quantity')</th>
                                                <th>@lang('Price')</th>
                                                <th>@lang('Total')</th>
                                            </tr>
                                            <?php
                                            $Total = 0;
                                            ?>
                                            @foreach($details as $detail)

                                                <tr>
                                                    <td>{{ $detail->item->name ?? ''}}</td>
                                                    <td>{{ $detail->quantity }}</td>
                                                    <td>{{ $detail->price }} </td>
                                                    <td>{{ $detail->price * $detail->quantity }} </td>
                                                </tr>


                                            @endforeach
                                        </table>
                                    </td>
                                </tr>
                                <?php
                                ?>
                                <tr>
                                    <th data-toggle="true">@lang('shipping')</th>
                                    <td>{{ $order->shipping ?? 0 }} </td>
                                </tr>
                                <tr>
                                    <th data-toggle="true">@lang('Vat')</th>
                                    <td>{{ $order->vat ?? 0 }} </td>
                                </tr>
                                @if ($order->coupon_id)

                                    <tr>
                                        <th data-toggle="true">@lang('Coupon')</th>
                                        <td>{{ $order->promocode->code }} </td>
                                    </tr>
                                @endif
                                <tr>
                                    <th data-toggle="true">@lang('Total')</th>
                                    <td>{{  $order->price }} </td>
                                </tr>
                                <tr>
                                    <th data-toggle="true">@lang('Address ')</th>
                                    <td>
                                        <div>{{$order->address->address }}</div>
                                        <div><a href="https://www.google.com/maps/search/?api=1&query={{$order->address->lat}},{{$order->address->lng}}">{{__('Map location')}}</a></div>
                                    </td>
                                </tr>
                                <tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

