@extends('layouts.front_layout')

@section('title', 'Account')

@section('content')
    <section class="title about-title order-details-title">
        <div class="container">
            <!-- <div class="row">
                <div class="col-md-12">

                </div>
            </div> -->

            <div class="about-title-content">

                <span class="line"></span>

                <div>
                    <h2 style="color: #0D55B1;">
                        طلباتي
                    </h2>
                    <p style=" margin-right: 20px; margin-top: 8px; color: #0B2242;">
                        طلباتك الحالية والسابقة عبر خدمات سبيد تريدنج
                    </p>
                </div>

            </div>

    </section>

    <section class="card my-order">
        <div class="container">
            <div class="row" style="top: 45px;">
                <div class="col-6 d-flex justify-content-end">
                    <h6>
                        طلبات سابقة
                    </h6>
                    <div class="row">
                        <div class="card-box" style="margin-top: -150px">
                            <div class="row">

                                <div class="col-4 d-flex flex-column align-items-center">
                                    <span style="margin-bottom: 5px;">
                                        #1231241
                                    </span>
                                    <img src="{{ asset('web/img/product image.png') }}" alt="" width="50" height="50"
                                         style="margin-bottom: 15px">
                                    <img src="{{ asset('web/img/product image.png') }}" alt="" width="50" height="50"
                                         style="margin-bottom: 15px">
                                    <img src="{{ asset('web/img/product image.png') }}" alt="" width="50" height="50"
                                         style="margin-bottom: 15px">
                                </div>

                                <div class="col-8">
                                    <p>
                                        {{ $order_done->provider->name }}
                                    </p>
                                    <ul>
                                        <li>
                                            {{ $order_done->user->name }}
                                        </li>
                                        <li>
                                            {{ $order_done->user->mobile }}
                                        </li>
                                        <li>
                                            {{ $order_done->address->name }}
                                        </li>
{{--                                        <li>بطاقة تنتهى برقم 1234</li>--}}
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-6 d-flex justify-content-start">
                    <h6>
                        طلبات جارية
                    </h6>
                    <div class="row">
                        <div class="card-box" style="    top: -290px;
                        right: -40px;">
                            <div class="row">

                                <div class="col-4 d-flex flex-column align-items-center">
                                    <img src="{{ asset('web/img/product image.png') }}" alt="" width="60" height="60"
                                         style="margin-bottom: 15px">
                                    <img src="{{ asset('web/img/product image.png') }}" alt="" width="60" height="60"
                                         style="margin-bottom: 15px">
                                    <img src="{{ asset('web/img/product image.png') }}" alt="" width="60" height="60"
                                         style="margin-bottom: 15px">
                                </div>

                                <div class="col-8">
                                    <p>{{ $under_order->provider->name }}</p>
                                    <ul>
                                        <li>
                                            {{ $under_order->user->name }}
                                        </li>
                                        <li>
                                            {{ $under_order->user->mobile }}
                                        </li>
                                        <li>{{ $order_done->address->name }}</li>
{{--                                        <li>بطاقة تنتهى برقم 1234</li>--}}
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- <div class="card-decsription">
                    <div class="mb-2">
                        <img src="img/user.png" class="img-one" style="z-index: 8;">
                        <span>
                            أحمد رجب
                        </span>
                    </div>

                    <div class="mb-2">
                        <img src="img/phone2.png" class="img-one" style="z-index: 8;">
                        <span>
                            0595477132
                        </span>
                    </div>

                    <div>
                        <img src="img/email.png" class="img-one" style="z-index: 8;">
                        <span>
                            ahm19edhasan@gmail.com
                        </span>
                    </div>
                </div> -->
                </div>

            </div>




        </div>
    </section>

@endsection
