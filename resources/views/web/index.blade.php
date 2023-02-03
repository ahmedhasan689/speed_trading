@extends('layouts.front_layout')

@section('title', 'Home')

@section('content')

    <header class="mb-4">
        <div class="container">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto col-md-2 mb-2 mb-lg-0 first-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">
                                    <img src="{{ asset('web/img/cart_nav.png') }}" alt=""
                                         style="width: 25px; height: 25px;">
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img src="{{ asset('web/img/favorite.png') }}" alt=""
                                         style="width: 25px; height: 25px;">
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link">
                                    <img src="{{ asset('web/img/notifications.png') }}" alt=""
                                         style="width: 25px; height: 25px;">
                                </a>
                            </li>
                            <div class="vl"></div>
                            <li class="nav-item">
                                <a class="nav-link" style="width: max-content;">
                                    <img src="{{ asset('web/img/phone.png') }}" alt=""
                                         style="width: 25px; height: 25px;">
                                    <span style="color: #0D55B1; font-weight: bold;">16454</span>
                                </a>
                            </li>
                        </ul>

                        <form class="d-flex col-md-6 search-input" role="search">
                            <input class="form-control me-2 search-text" type="search" placeholder="أدخل"
                                   aria-label="Search">
                            <img class="search-icon" src="{{ asset('web/img/search.png') }}" alt="">
                        </form>

                        <div class="col-md-3 empty-space"></div>
                    </div>
                </div>
            </nav>
            <hr>
            <nav class="navbar navbar-expand-lg ">
                <ul class="d-flex second-nav align-content-center justify-content-evenly">
                    <li>
                        <a href="#" id="more-dropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="{{ asset('web/img/more.png') }}" alt="">
                        </a>
                        <ul class="dropdown-menu more-dropdown" aria-labelledby="more-dropdown">
                            <h6 class="text-center">
                                حسابي
                            </h6>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    دخول
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    اشتراك جديد
                                    <img src="{{ asset('web/img/join.png') }}" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="subscripe.html">
                                    اشتراك موزع
                                    <img src="{{ asset('web/') }}img/distributers.png" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="my-favorite.html">
                                    المفضلة
                                    <img src="{{ asset('web/') }}img/favorite.png" alt="">
                                </a>
                            </li>

                            <h6 class="text-center">
                                الاقسام
                            </h6>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    كاميرات
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    شبكات
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    إنتركوم
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    وحدات تسجيل
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    إكسسوارات
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <h6 class="text-center">
                                الماركات
                            </h6>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    HIKVISION
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    EZVIZ
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    AVTECH
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    ExTell
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    Wastern
                                    <img src="{{ asset('web/') }}img/WesternDigital.png" alt="">
                                </a>
                            </li>

                            <h6 class="text-center">
                                خدماتنا
                            </h6>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    فعاليات
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    حلول
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    غرف
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    وظائف
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    تدريب
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    Speed4Training
                                    <img src="" alt="">
                                </a>
                            </li>

                            <h6 class="text-center">
                                الدعم
                            </h6>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    الأسئلة الشائعة
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>
                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    الدعم الفني
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    تواصل معنا
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    الشروط والأحكام
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>

                            <li class="dropdown-list">
                                <a class="dropdown-item" href="#">
                                    سياسة
                                    <img src="{{ asset('web/img/login.png') }}" alt="">
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="" data-bs-toggle="modal" data-bs-target="#loginModal">تسجيل الدخول</a>
                    </li>
                    <li>
                        <a href="" data-bs-toggle="modal" data-bs-target="#registerModal">تسجيل جديد</a>
                    </li>
                    <li>
                        <a href="">إشتراك موزع</a>
                    </li>

                    <li>
                        <a href="">الأقسام</a>
                    </li>

                    <li>
                        <a href="">الماركات</a>
                    </li>

                    <li>
                        <a href="">خدمات سبيد</a>
                    </li>

                    <li>
                        <a href="">الدعم</a>
                    </li>

                    <li>
                        <a href="aboutCompany.html">عن الشركة</a>
                    </li>

                    <li>
                        <a href="">English</a>
                    </li>

                    <li>
                        <a href="">Test</a>
                    </li>

                </ul>
            </nav>

            <a class="navbar-brand" href="#">
                <img class="logo" src="{{ asset('web/img/logo.png') }}" alt="">
            </a>


            <!-- Modal -->
            <div class="modal fade" style="z-index: 1;" id="loginModal" tabindex="-1" aria-labelledby="loginModal"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
                        <div class="modal-body">
                            <h5 class="text-center">
                                أدخل بياناتك
                            </h5>
                            <span class="d-flex justify-content-center" style="margin-top: -15px;">
                                أوادخل رقم الهاتف وكلمة المرور
                            </span>
                            <form action="{{ route('login') }}" method="POST">
                                @csrf

                                <div class="alert text-danger text-center d-none login-errors"></div>

                                <div class="outside-div">
                                    <div class="row">
                                        <div class="col-6 social-icons">
                                            <button class="btn btn-light">
                                                <img src="{{ asset('web/img/social_facebook.png') }}">
                                            </button>
                                            <button class="btn btn-light">
                                                <img src="{{ asset('web/img/social_google.png') }}">
                                            </button>
                                        </div>
                                        <div class="col-6">
                                            <span>
                                                ادخل بإحدى بمنصات التواصل الاجتماعي
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/phone2.png') }}" height="24" width="24">
                                    <input id="loginMobile" class="form-control" name="mobile" type="text"
                                           placeholder="رقم الهاتف"/>
                                    <label id="myInput-label">رقم الهاتف</label>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/password.png') }}" height="24" width="24">
                                    <input id="loginPassword" class="form-control" name="password" type="password"
                                           placeholder="كلمة المرور"/>
                                    <label id="myInput-label">كلمة المرور</label>
                                </div>


                                <div class="group">
                                    <button type="submit" class="btn loginBtn">
                                        <img src="{{ asset('web/img/arrow_next.png') }}" alt="">
                                        دخول
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" style="z-index: 1;" id="registerModal" tabindex="-1" aria-labelledby="registerModal"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
                        <div class="modal-body">
                            <h5 class="text-center">
                                أدخل بياناتك
                            </h5>
                            <span class="d-flex justify-content-center" style="margin-top: -15px;">
                                أوادخل بياناتك للإشتراك مع سبيد
                            </span>
                            <form action="{{ route('register') }}" method="POST">
                                @csrf
                                <div class="alert text-danger text-center d-none register-errors"></div>

                                <div class="outside-div">
                                    <div class="row">
                                        <div class="col-6 social-icons">
                                            <button class="btn btn-light">
                                                <img src="{{ asset('web/img/social_facebook.png') }}">
                                            </button>
                                            <button class="btn btn-light">
                                                <img src="{{ asset('web/img/social_google.png') }}">
                                            </button>
                                        </div>
                                        <div class="col-6">
                                            <span>
                                                ادخل بإحدى بمنصات التواصل الاجتماعي
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/phone2.png') }}" height="24" width="24">
                                    <input id="registerName" class="form-control" name="name" type="text"
                                           placeholder="الاسم"/>
                                    <label id="myInput-label">الاسم</label>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/phone2.png') }}" height="24" width="24">
                                    <input id="registerMobile" name="mobile" class="form-control" type="text"
                                           placeholder="رقم الهاتف"/>
                                    <label id="myInput-label">رقم الهاتف</label>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/phone2.png') }}" height="24" width="24">
                                    <input id="registerEmail" class="form-control" name="email" type="text"
                                           placeholder="البريد الإلكتروني"/>
                                    <label id="myInput-label">البريد الإلكتروني</label>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/password.png') }}" height="24" width="24">
                                    <input id="registerPassword" class="form-control" name="password" type="text"
                                           placeholder="كلمة المرور"/>
                                    <label id="myInput-label">كلمة المرور</label>
                                </div>


                                <div class="group">
                                    <button class="btn registerBtn">
                                        <img src="{{ asset('web/img/arrow_next.png') }}" alt="">
                                        إشتراك
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="mb-4">
        <div class="slider">
            <div id="main-slider" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item carousel-one active">
                    </div>
                    <div class="carousel-item carousel-two">
                    </div>
                    <div class="carousel-item carousel-three">
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-2">

            <div class="offset-md-5 col-md-2 offset-md-5 d-flex justify-content-center">

                <button class="carousel-control-prev" type="button" data-bs-target="#main-slider"
                        style="background-color: #ECEEEF; position:static; border-radius: 12px; width: 48px; height: 48px;"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" style="color: #0D55B1;" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>

                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#main-slider" data-bs-slide-to="0" class="active"
                            aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#main-slider" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#main-slider" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                </div>

                <button class="carousel-control-next" type="button"
                        style="background-color: #ECEEEF; position:static; border-radius: 12px; width: 48px; height: 48px;"
                        data-bs-target="#main-slider" data-bs-slide="next">
                    <span class="carousel-control-next-icon" style="color: #0D55B1;" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>

            </div>

            <div class="col-4 offset-4">

            </div>

        </div>

    </section>

    <section class="companies mb-4">
        <div class="container">
            <div class="row">
                <ul>
                    <li>
                        <a href="#">
                            <img src="{{ asset('web/img/NoPath - Copy (11).png') }}" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="{{ asset('web/img/EZVIZ.png') }}" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="{{ asset('web/img/AVTECH.png') }}" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="{{ asset('web/img/ExTell.png') }}" alt="">
                        </a>
                    </li>
                    <li><a href="#"><img src="{{ asset('web/img/WesternDigital.png') }}" alt=""></a></li>
                </ul>
            </div>
        </div>
    </section>

    <section class="offers">
        <div class="container">
            <div class="row">
                <div class="col-2 advertise-section">
                    <div class="advertise-buttons">
                        <button class="btn btn-light">
                            <i class="fa-solid fa-circle-info"></i>
                        </button>
                        <button class="btn btn-light">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                </div>
                <div class="col-8">
                    <div class="row header-title">
                        <h3 class="col-12">
                            أحدث العروض
                        </h3>
                    </div>
                    <div class="row">
                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box">
                            <div class="product-star">
                                <span>4.5</span>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <img src="{{ asset('web/img/product image.png') }}" alt="">
                            <div class="product-info">
                                <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
                                <span>
                                    IDS-123123123
                                </span>
                            </div>
                            <div class="product-icons">
                                <div class="row">
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <span>
                                            1.350
                                            <sup>L.E</sup>
                                        </span>
                                    </div>
                                    <div class="col-2">
                                        <a href="#">
                                            <i class="fa-regular fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 offer-btn d-flex justify-content-center">
                            <button class="btn btn-light">
                                <i class="fa-solid fa-arrow-left"></i>
                                أحدث العروض
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-2 advertise-section">
                    <div class="advertise-buttons">
                        <button class="btn btn-light">
                            <i class="fa-solid fa-circle-info"></i>
                        </button>
                        <button class="btn btn-light">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="solutions">
        <div class="container">
            <div class="row">
                <div class="col-4 mr-3">
                    <div class="row">
                        <h5 class="d-flex justify-content-center">
                            حمّل تطبيق سبيد
                        </h5>
                        <span class="d-flex justify-content-center">
                            استخدم تطبيق سبيد فور تريدينج لطلب كل المنتجات المعروضة في أي وقت وأي مكان
                        </span>
                    </div>

                    <div class="row justify-content-center" style="margin-top: 25px;">
                        <div class="col-5">
                            <img src="{{ asset('web/img/badge_appstore.png') }}" alt="">
                        </div>
                        <div class="col-5">
                            <img src="{{ asset('web/img/badge_playstore.png') }}" width="171" height="57">
                        </div>
                    </div>

                    <div class="row">
                        <div class="hand-img">
                            <img src="{{ asset('web/img/hand.png') }}" width="500" height="600">
                            <!-- width: 536px;
    height: 625px; -->
                        </div>
                    </div>


                </div>
                <div class="col-8">
                    <div class="row">
                        <h5 class="d-flex justify-content-center">
                            حمّل تطبيق سبيد
                        </h5>
                        <span class="d-flex justify-content-center">
                            استخدم تطبيق سبيد فور تريدينج لطلب كل المنتجات المعروضة في أي وقت وأي مكان
                        </span>
                    </div>

                    <div class="row d-flex">
                        <div class="col-2">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row" style="display: flex;">
                            <button class="btn btn-primary">
                                <i class="fa-solid fa-arrow-left"></i>
                                عرض الكل
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="events">
        <div class="container">
            <div class="row">
                <div class="col-2 advertise-section">
                    <div class="advertise-buttons">
                        <button class="btn btn-light">
                            <i class="fa-solid fa-circle-info"></i>
                        </button>
                        <button class="btn btn-light">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                </div>

                <div class="col-8">
                    <div class="row header-title">
                        <h3 class="col-12">
                            أحدث الفعاليات
                        </h3>
                    </div>
                    <div class="row mb-4">
                        <div class="col-4">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-4">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-4">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-4">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>

                        <div class="col-4">
                            <div class="img-cover"></div>
                            <div class="title-box">
                                إنجازات
                            </div>
                        </div>
                    </div>

                    <div class="row mt-5">
                        <div class="col-12 offer-btn d-flex justify-content-center">
                            <button class="btn btn-light">
                                <i class="fa-solid fa-arrow-left"></i>
                                عرض كل الفعاليات
                            </button>
                        </div>
                    </div>
                </div>

                <div class="col-2 advertise-section">
                    <div class="advertise-buttons">
                        <button class="btn btn-light">
                            <i class="fa-solid fa-circle-info"></i>
                        </button>
                        <button class="btn btn-light">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')
    <script>
        // Login Function
        $('.loginBtn').click(function (e) {
            e.preventDefault();

            var mobile = $('#loginMobile').val(),
                password = $('#loginPassword').val();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: "{{ route('login') }}",
                type: "POST",
                data: {
                    mobile: mobile,
                    password: password,
                },
                success: function (data) {
                    location.href = "{{ route('page') }}"
                },
                error: function (data) {
                    $('.login-errors').empty();
                    $('.login-errors').addClass('d-none');
                    $.each(data.responseJSON.errors, function (key, value) {
                        $('.login-errors').removeClass('d-none');
                        $('.login-errors').append(`
                            <span>` + value + `</span> <br>
                        `)
                    });
                }
            });

        })

        // Register Function
        $('.registerBtn').click(function (e) {
            e.preventDefault();

            var name = $('#registerName').val(),
                mobile = $('#registerMobile').val(),
                email = $('#registerEmail').val(),
                password = $('#registerPassword').val();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: "{{ route('register') }}",
                type: "POST",
                data: {
                    name: name,
                    mobile: mobile,
                    email: email,
                    password: password,
                },
                success: function (data) {
                    location.href = "{{ route('page') }}"
                },
                error: function (data) {
                    $('.register-errors').empty();
                    $('.register-errors').addClass('d-none');
                    $.each(data.responseJSON.errors, function (key, value) {
                        $('.register-errors').removeClass('d-none');
                        $('.register-errors').append(`
                            <span>` + value + `</span> <br>
                        `)
                    });
                }
            });

        })
    </script>
@endsection
