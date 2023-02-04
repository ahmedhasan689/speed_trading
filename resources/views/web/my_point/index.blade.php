@extends('layouts.front_layout')

@section('title', 'My Point')

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
                        نقاطي
                    </h2>
                    <p style=" margin-right: 20px; margin-top: 8px; color: #0B2242;">
                        اشترى من خلال تطبيق سبيد لتحصل على نقاط واستبدل نقاطك بهدايا قيّمة
                    </p>
                </div>



            </div>

    </section>

    <section class="my-points">
        <div class="container">
            <div class="row row-height d-flex flex-row-reverse">
                <div class="col-4">
                    <div class="point-box">
                        <h2 class="text-white">
                            {{ $points->points }}
                        </h2>

                        <p>
                            اشترى من خلال تطبيق سبيد لتحصل على نقاط واستبدل نقاطك بهدايا قيّمة
                        </p>
                    </div>
                </div>
                <div class="col-8">
                    <div class="row justify-content-around mb-3">
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-around">
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                        <div class="col-3">
                            <div>
                                <img src="{{ asset('web/img/product image.png') }}" alt="" width="109" height="96">
                            </div>

                            <div class="details">

                                <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                                <span class="first-span">DS-MP7508/GLF/WI</span>
                                <span>4000</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
@endsection
