<!DOCTYPE html>
<html lang="en">

<x-head />

<body>

    @auth
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
                                        <img src="{{ asset('web/img/cart_nav.png') }}" alt="" style="width: 25px; height: 25px;">
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <img src="{{ asset('web/img/favorite.png') }}" alt="" style="width: 25px; height: 25px;">
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link">
                                        <img src="{{ asset('web/img/notifications.png') }}" alt="" style="width: 25px; height: 25px;">
                                    </a>
                                </li>
                                <div class="vl"></div>
                                <li class="nav-item">
                                    <a class="nav-link" style="width: max-content;">
                                        <img src="{{ asset('web/img/phone.png') }}" alt="" style="width: 25px; height: 25px;">
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
                                        <img src="{{ asset('web/img/distributers.png') }}" alt="">
                                    </a>
                                </li>
                                <li class="dropdown-list">
                                    <a class="dropdown-item" href="my-favorite.html">
                                        المفضلة
                                        <img src="{{ asset('web/img/favorite.png') }}" alt="">
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
                                        <img src="{{ asset('web/img/WesternDigital.png') }}" alt="">
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
                                        <img src="{{ asset('web/img/login.png') }}" alt="">
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
                        <li class="dropdown-btn">
                            <a href="">حسابي</a>
                            <div class="dropdown-content-first">
                                <a href="account.html">
                                    حسابي
                                    <img src="{{ asset('web/img/user.png') }}" alt="" style="margin-left: 10px;">
                                </a>
                                <a href="my_orders.html">
                                    طلباتي
                                    <img src="{{ asset('web/img/user.png') }}" alt="" style="margin-left: 10px;">
                                </a>
                                <a href="my-points.html">
                                    نقاطي
                                    <img src="{{ asset('web/img/user.png') }}" alt="" style="margin-left: 10px;">
                                </a>
                                <a href="#">
                                    عناويني
                                    <img src="{{ asset('web/img/user.png') }}" alt="" style="margin-left: 10px;">
                                </a>
                                <a href="my-favorite.html">
                                    المفضلة
                                    <img src="{{ asset('web/img/user.png') }}" alt="" style="margin-left: 10px;">
                                </a>
                                <form action="{{ route('logout') }}" method="POST">
                                    @csrf
                                    <button type="submit" style="text-decoration: none;
                                            color: #0D55B1;
                                            text-align: center;
                                            padding: 15px 15px;
                                            font-size: 14px;
                                            font-weight: 700;
                                            display: flex;
                                            width: 260px;
                                            justify-content: end;
                                            border: 0;
                                    ">
                                        تسجيل خروج
                                        <img src="{{ asset('web/img/user.png') }}" alt="" style="margin-left: 10px;">
                                    </button>
                                </form>
                            </div>
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
            </div>
        </header>
    @endauth

@yield('content')

<x-script />

</body>

</html>
