<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.rtl.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/swiper.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <title>
        {{--        @yield('title', 'Speed Trading')--}}
        {{ $title }}
    </title>
</head>

<body>

@auth
    <header class="sticky-top navbar-expand-lg bg-white nav-shadow">
        <nav class="navbar">
            <div class="container">
                <a class="navbar-brand" href="{{ route('home') }}">
                    <img src="{{ asset('assets/images/logo.png')}}" alt="SpeedTrading">
                </a>
                <form action="{{ route('search.index') }}" class="search-box position-relative d-none d-md-flex" method="POST">
                    @csrf
                    @method('GET')
                    <img class="position-absolute top-50 translate-middle-y" src="{{ asset('assets/icon/search.svg')}}">
                    <input name="search" class="form-control py-2 ps-5 bg-light" type="search"
                               placeholder="ابحث عن كاميرات وأنظمة المراقبة ...">
                </form>
                <div class="nav-icons d-flex gap-3">
                    <form action="{{ route('search.index') }}" class="mobile-search" method="POST">
                        @csrf
                        @method('GET')
                        <input type="search" name="search" class="form-control bg-light mobile-search-input position-absolute start-0 end-0 d-flex d-md-none m-auto p-2 rounded-3"
                               placeholder="ابحث عن كاميرات وأنظمة المراقبة ...">
                        <a class="mobile-search-btn d-block d-md-none cursor-pointer">
                            <img src="{{ asset('assets/icon/search.svg')}}">
                        </a>
                    </form>

                    <span class="nav-phone position-relative me-3 d-none d-lg-flex">
                        <span>16454</span>
                        <img src="{{ asset('assets/icon/phone.svg') }}" alt="">
                    </span>

                    <div class="btn-group notification">
                        <a class="cursor-pointer" data-bs-toggle="dropdown" data-bs-display="static"
                           aria-expanded="false" id="dropdownMenuClickableOutside" data-bs-auto-close="inside">
                            <img src="{{ asset('assets/icon/notifications.svg') }}" alt="">
                        </a>
                        <ul class="dropdown-menu border-0 rounded-3 nav-shadow dropdown-menu-end"
                            aria-labelledby="dropdownMenuClickableOutside">
                            <div class="notify-header px-2">
                                <p class="fw-bold">التنبيهات</p>
                            </div>

                            <div class="list-group list-group-flush px-2">
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div>
                                        <p class="mb-0 notify-text">إشعار جماعي من مدیر التطبیق</p>
                                        <small class="text-muted">منذ ساعة</small>
                                    </div>
                                </a>
                            </div>
                            <div class="list-group list-group-flush px-2">
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div>
                                        <p class="mb-0 notify-text">إشعار جماعي من مدیر التطبیق</p>
                                        <small class="text-muted">منذ ساعة</small>
                                    </div>
                                </a>
                            </div>
                        </ul>
                    </div>

                    <a href="{{ route('my_favorite.index') }}" class="d-none d-lg-flex">
                        <img src="{{ asset('assets/icon/favorite.svg') }}" alt="">
                    </a>
                    <a href="#">
                        <img src="{{ asset('assets/icon/cart_nav.svg') }}" alt="">
                    </a>
                    <button class="btn p-0 d-flex d-lg-none cursor-pointer" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <img src="{{ asset('assets/icon/menu.png') }}" alt="">
                    </button>
                </div>
            </div>
        </nav>

        <nav class="nav-menu bg-white pb-2 offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
             aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">القائمة</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>

            <div class="container">
                <ul class="navbar-nav justify-content-center gap-2 gap-lg-3">
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">حسابي</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('account.index') }}">
                                    <img src="{{ asset('assets/icon/user.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">حسابي</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('my_order.index') }}">
                                    <img src="{{ asset('assets/icon/orders.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">طلباتي</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('my_point.index') }}">
                                    <img src="{{ asset('assets/icon/points.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">نقاطي</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('address.index') }}">
                                    <img src="{{ asset('assets/icon/place.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">عناويني</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('my_favorite.index') }}">
                                    <img src="{{ asset('assets/icon/favorite-3.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">المفضلة</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li>
                                <form action="{{ route('logout') }}" method="POST">
                                    @csrf

                                    <button type="submit" class="dropdown-item rounded-3 py-3" href="#">
                                        <img src="{{ asset('assets/icon/logout.svg') }}" class="me-3" width="20">
                                        <small class="fw-bold">تسجيل خروج</small>
                                        <small class="float-end d-none">&#129128;</small>
                                    </button>
                                </form>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">الأقسام</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            @foreach($categories as $category)
                                <li>
                                    <a class="dropdown-item rounded-3 py-3" href="{{ route('category.show', ['id' => $category->id]) }}">
                                        <img src="{!! url('/').'/'.$category->image !!}" class="me-3" width="20">
                                        <small class="fw-bold">{{ $category->getTranslation('name', 'ar') }}</small>
                                        <small class="float-end d-none">&#129128;</small>
                                    </a>
                                </li>
                            @endforeach

                            <div class="mt-3 text-center">
                                <p class="fw-bold mb-1">تبحث عن حلول متكاملة ؟</p>
                                <small class="text-muted">تقدم سبيد حلول امنية متكاملة وفعّالة لمنشئات متعددة مثل الخدمات المصرفية والفنادق</small>
                                <a href="{{ route('solution.index') }}" class="btn btn-light rounded-3 d-block text-center my-2 w-100 py-2">
                                    <small>تصفح كل الحلول</small>
                                    <span class="arrow ms-2">&#129128;</span>
                                </a>
                            </div>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">الماركات</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            @foreach( $brands as $brand )
                                <li>
                                    <a class="dropdown-item rounded-3 py-3" href="{{ route('brand.show', ['id' => $brand->id]) }}">
                                        <img src="{{ asset('/') . $brand->image }}" class="me-3" width="30">
                                        <small class="fw-bold">
                                            {{ $brand->getTranslation('name', app()->getLocale()) }}
                                        </small>
                                        <small class="float-end d-none">&#129128;</small>
                                    </a>
                                </li>
                            @endforeach


                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">خدمات سبيد</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('event.index') }}">
                                    <img src="{{ asset('assets/icon/events.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">فعاليات</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('solution.index') }}">
                                    <img src="{{ asset('assets/icon/solutions.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">حلول</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('room.index') }}">
                                    <img src="{{ asset('assets/icon/rooms.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">غرف</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('job.index') }}">
                                    <img src="{{ asset('assets/icon/services-3.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">وظائف</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('training.index') }}">
                                    <img src="{{ asset('assets/icon/training.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">تدريب</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('speed_training.index') }}">
                                    <img src="{{ asset('assets/icon/about.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">Speed 4 Training</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">الدعم</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.faqs') }}">
                                    <img src="{{ asset('assets/icon/support.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">الأسئلة الشائعة</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.support') }}">
                                    <img src="{{ asset('assets/icon/technical_support.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">الدعم الفنّي</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="#" data-bs-toggle="modal" data-bs-target="#contactUsModal">
                                    <img src="{{ asset('assets/icon/contact_us.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">تواصل معنا</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.terms') }}">
                                    <img src="{{ asset('assets/icon/terms.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">الشروط والأحكام</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.usagePolicy') }}">
                                    <img src="{{ asset('assets/icon/document.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">سياسة الاستخدام</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('page.aboutCompany') }}">عن الشركة</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">English</a>
                    </li>
                    <li class="nav-item position-relative qr-btn">
                        <a class="">
                            <img src="{{ asset('assets/icon/qr-code.png') }}" class="cursor-pointer" alt="qr-code" width="35">
                        </a>
                        <div class="qr-item position-absolute end-0 top-0 bg-white shadow p-3">
                            <small class="fw-bold text-color d-block text-center">امسح الكود لتحميل التطبيق</small>
                            <div class="d-flex justify-content-center align-items-center mb-2">
                                <a href="#">
                                    <img class="apple img-fluid" src="{{ asset('assets/icon/app-store.svg') }}"/>
                                </a>
                                <a href='#'>
                                    <img class="android img-fluid" src='{{ asset('assets/icon/google-play.png') }}'/>
                                </a>
                            </div>
                            <img src="{{ asset('assets/icon/qr-code.png') }}" class="img-fluid" alt="qr-code">
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
@else
    <header class="sticky-top navbar-expand-lg bg-white nav-shadow">
        <nav class="navbar">
            <div class="container">
                <a class="navbar-brand" href="{{ route('home') }}">
                    <img src="{{ asset('assets/images/logo.png') }}" alt="SpeedTrading">
                </a>
                <form action="{{ route('search.index') }}" class="search-box position-relative d-none d-md-flex" method="POST">
                    @csrf
                    @method('GET')
                    <img class="position-absolute top-50 translate-middle-y" src="{{ asset('assets/icon/search.svg')}}">
                    <input name="search" class="form-control py-2 ps-5 bg-light" type="search"
                           placeholder="ابحث عن كاميرات وأنظمة المراقبة ...">
                </form>
                <div class="nav-icons d-flex gap-3">
                    <form action="{{ route('search.index') }}" class="mobile-search" method="POST">
                        @csrf
                        @method('GET')
                        <input type="search" name="search" class="form-control bg-light mobile-search-input position-absolute start-0 end-0 d-flex d-md-none m-auto p-2 rounded-3"
                               placeholder="ابحث عن كاميرات وأنظمة المراقبة ...">
                        <a class="mobile-search-btn d-block d-md-none cursor-pointer">
                            <img src="{{ asset('assets/icon/search.svg')}}">
                        </a>
                    </form>

                    <span class="nav-phone position-relative me-3 d-none d-lg-flex">
                    <span>16454</span>
                    <img src="{{ asset('assets/icon/phone.svg') }}" alt="">
                </span>

                    <div class="btn-group notification">
                        <a class="cursor-pointer" data-bs-toggle="dropdown" data-bs-display="static"
                           aria-expanded="false" id="dropdownMenuClickableOutside" data-bs-auto-close="inside">
                            <img src="{{ asset('assets/icon/notifications.svg') }}" alt="">
                        </a>
                        <ul class="dropdown-menu border-0 rounded-3 nav-shadow dropdown-menu-end"
                            aria-labelledby="dropdownMenuClickableOutside">
                            <div class="notify-header px-2">
                                <p class="fw-bold">التنبيهات</p>
                            </div>

                            <div class="list-group list-group-flush px-2">
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div>
                                        <p class="mb-0 notify-text">إشعار جماعي من مدیر التطبیق</p>
                                        <small class="text-muted">منذ ساعة</small>
                                    </div>
                                </a>
                            </div>
                            <div class="list-group list-group-flush px-2">
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div>
                                        <p class="mb-0 notify-text">إشعار جماعي من مدیر التطبیق</p>
                                        <small class="text-muted">منذ ساعة</small>
                                    </div>
                                </a>
                            </div>
                        </ul>
                    </div>

                    <a href="{{ route('my_favorite.index') }}" class="d-none d-lg-flex">
                        <img src="{{ asset('assets/icon/favorite.svg') }}" alt="">
                    </a>
                    <a href="#">
                        <img src="{{ asset('assets/icon/cart_nav.svg') }}" alt="">
                    </a>
                    <button class="btn p-0 d-flex d-lg-none cursor-pointer" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <img src="{{ asset('assets/icon/menu.png') }}" alt="">
                    </button>
                </div>
            </div>
        </nav>

        <nav class="nav-menu bg-white pb-2 offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
             aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">القائمة</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>

            <div class="container">
                <ul class="navbar-nav justify-content-center gap-2 gap-lg-3">
                    <li class="nav-item">
                        <a class="nav-link cursor-pointer" data-bs-toggle="modal" data-bs-target="#loginModal">تسجيل
                            الدخول</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link cursor-pointer" data-bs-toggle="modal" data-bs-target="#signupModal">تسجيل
                            جديد</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('company.index') }}">اشترك كموزع</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">الأقسام</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            @foreach($categories as $category)
                                <li>
                                    <a class="dropdown-item rounded-3 py-3" href="{{ route('category.show', ['id' => $category->id]) }}">
                                        <img src="{!! url('/').'/'.$category->image !!}" class="me-3" width="20">
                                        <small class="fw-bold">{{ $category->getTranslation('name', 'ar') }}</small>
                                        <small class="float-end d-none">&#129128;</small>
                                    </a>
                                </li>
                            @endforeach
                            <div class="mt-3 text-center">
                                <p class="fw-bold mb-1">تبحث عن حلول متكاملة ؟</p>
                                <small class="text-muted">تقدم سبيد حلول امنية متكاملة وفعّالة لمنشئات متعددة مثل الخدمات
                                    المصرفية والفنادق</small>
                                <a href="{{ route('solution.index') }}" class="btn btn-light rounded-3 d-block text-center my-2 w-100 py-2">
                                    <small>تصفح كل الحلول</small>
                                    <span class="arrow ms-2">&#129128;</span>
                                </a>
                            </div>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">الماركات</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            @foreach( $brands as $brand )
                                <li>
                                    <a class="dropdown-item rounded-3 py-3" href="{{ route('brand.show', ['id' => $brand->id]) }}">
                                        <img src="{{ asset('/') . $brand->image }}" class="me-3" width="30">
                                        <small class="fw-bold">
                                            {{ $brand->getTranslation('name', app()->getLocale()) }}
                                        </small>
                                        <small class="float-end d-none">&#129128;</small>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">خدمات سبيد</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('event.index') }}">
                                    <img src="{{ asset('assets/icon/events.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">فعاليات</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('solution.index') }}">
                                    <img src="{{ asset('assets/icon/solutions.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">حلول</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('room.index') }}">
                                    <img src="{{ asset('assets/icon/rooms.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">غرف</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('job.index') }}">
                                    <img src="{{ asset('assets/icon/services-3.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">وظائف</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('training.index') }}">
                                    <img src="{{ asset('assets/icon/training.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">تدريب</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('speed_training.index') }}">
                                    <img src="{{ asset('assets/icon/about.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">Speed 4 Training</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">الدعم</a>
                        <ul class="dropdown-menu rounded-3 px-2">
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.faqs') }}">
                                    <img src="{{ asset('assets/icon/support.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">الأسئلة الشائعة</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.support') }}">
                                    <img src="{{ asset('assets/icon/technical_support.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">الدعم الفنّي</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="#" data-bs-toggle="modal" data-bs-target="#contactUsModal">
                                    <img src="{{ asset('assets/icon/contact_us.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">تواصل معنا</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.terms') }}">
                                    <img src="{{ asset('assets/icon/terms.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">الشروط والأحكام</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                            <li><a class="dropdown-item rounded-3 py-3" href="{{ route('page.usagePolicy') }}">
                                    <img src="{{ asset('assets/icon/document.svg') }}" class="me-3" width="20">
                                    <small class="fw-bold">سياسة الاستخدام</small>
                                    <small class="float-end d-none">&#129128;</small>
                                </a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('page.aboutCompany') }}">عن الشركة</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">English</a>
                    </li>
                    <li class="nav-item position-relative qr-btn">
                        <a class="">
                            <img src="{{ asset('assets/icon/qr-code.png') }}" class="cursor-pointer" alt="qr-code" width="35">
                        </a>
                        <div class="qr-item position-absolute end-0 top-0 bg-white shadow p-3">
                            <small class="fw-bold text-color d-block text-center">امسح الكود لتحميل التطبيق</small>
                            <div class="d-flex justify-content-center align-items-center mb-2">
                                <a href="#">
                                    <img class="apple img-fluid" src="{{ asset('assets/icon/app-store.svg') }}"/>
                                </a>
                                <a href='#'>
                                    <img class="android img-fluid" src='{{ asset('assets/icon/google-play.png') }}'/>
                                </a>
                            </div>
                            <img src="{{ asset('assets/icon/qr-code.png') }}" class="img-fluid" alt="qr-code">
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
@endauth

{{ $slot }}


<footer class="mt-6 py-5">
    <div class="container">

        <div class="row">
            <div class="col-lg-3 col-md-12 text-center text-lg-start mb-4 mb-lg-0">
                <img src="{{ asset('assets/images/logo.png') }}" width="200" alt="Speed Trading">
                <small class="d-block mt-3">سبيد فور تريدنج هي شركة رائدة في أنظمة المراقبة والأمن بالكاميرات ،
                    تأسست عام 1999 ، بتمويل وأيدي مصرية. وفي غضون سنوات قليلة ، أصبحنا أحد أهم الموردين المصريين
                    الرائدين لمنتجات وحلول المراقبة بالفيديو.</small>
            </div>
            <div class="col-lg-1 col-md-4 col-6 mb-4 mb-lg-0">
                <h5 class="fw-bold mb-3">حسابي</h5>
                <ul>
                    <li><a class="nav-link" href="{{ route('account.index') }}">حسابي</a></li>
                    <li><a class="nav-link" href="{{ route('my_order.index') }}">طلباتي</a></li>
                    <li><a class="nav-link" href="{{ route('my_point.index') }}">نقاطي</a></li>
                    <li><a class="nav-link" href="{{ route('address.index') }}">عناويني</a></li>
                    <li><a class="nav-link" href="{{ route('my_favorite.index') }}">المفضلة</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-4 col-6 mb-4 mb-lg-0">
                <h5 class="fw-bold mb-3">الأقسام</h5>
                <ul>
                    @foreach($categories as $category)
                        <li>
                            <a class="nav-link" href="{{ route('category.show', ['id' => $category->id]) }}">
                                {{ $category->getTranslation('name', 'ar') }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="col-lg-2 col-md-4 col-6 mb-4 mb-lg-0">
                <h5 class="fw-bold mb-3">الماركات</h5>
                <ul>
                    @foreach($brands as $brand)
                        <li>
                            <a class="nav-link" href="{{ route('brand.show', ['id' => $brand->id]) }}">
                                {{ $brand->getTranslation('name', 'en') }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="col-lg-2 col-md-4 col-6 mb-4 mb-lg-0">
                <h5 class="fw-bold mb-3">خدماتنا</h5>
                <ul>
                    <li>
                        <a class="nav-link" href="{{ route('event.index') }}">
                            فعاليات
                        </a>
                    </li>
                    <li><a class="nav-link" href="{{ route('solution.index') }}">حلول</a></li>
                    <li><a class="nav-link" href="{{ route('room.index') }}">غرف</a></li>
                    <li><a class="nav-link" href="{{ route('job.index') }}">وظائف</a></li>
                    <li><a class="nav-link" href="{{ route('training.index') }}">تدريب</a></li>
                    <li><a class="nav-link" href="{{ route('speed_training.index') }}">Speed4Training</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-4 col-6 mb-4 mb-lg-0">
                <h5 class="fw-bold mb-3">الدعم</h5>
                <ul>
                    <li><a class="nav-link" href="{{ route('page.faqs') }}">الأسئلة الشائعة</a></li>
                    <li><a class="nav-link" href="{{ route('page.support') }}">الدعم الفنّي</a></li>
                    <li><a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#contactUsModal">تواصل معنا</a></li>
                    <li><a class="nav-link" href="{{ route('page.terms') }}">الشروط والأحكام</a></li>
                    <li><a class="nav-link" href="{{ route('page.usagePolicy') }}">سياسة الاستخدام</a></li>
                </ul>
            </div>
        </div>

        <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mt-4">
            <div class="d-flex gap-3 align-items-center">
                <a href="" class="btn btn-white btn-sm shadow-sm rounded-3">
                    <img src="{{ asset('assets/icon/social_facebook.svg') }}">
                </a>
                <a href="" class="btn btn-white btn-sm shadow-sm rounded-3">
                    <img src="{{ asset('assets/icon/social_twitter.svg') }}">
                </a>
                <a href="" class="btn btn-white btn-sm shadow-sm rounded-3">
                    <img src="{{ asset('assets/icon/social_linkedin.svg') }}">
                </a>
                <a href="" class="btn btn-white btn-sm shadow-sm rounded-3">
                    <img src="{{ asset('assets/icon/social_yoututbe.svg') }}">
                </a>
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <a href="#">
                    <img class="apple footer" src="{{ asset('assets/icon/app-store.svg') }}"
                         alt="Download on the App Store">
                </a>
                <a href='#'>
                    <img class="android footer" alt='Get it on Google Play'
                         src='{{ asset('assets/icon/google-play.png') }}'/>
                </a>
            </div>
            <p class="text-muted mt-2 d-flex d-md-none">جميع الحقوق محفوظة 2023 ©</p>
        </div>
    </div>
</footer>

<!-- Login Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0 gap-4 bg-transparent">
            <div class="modal-header border-0 rounded-4">
                <p class="modal-title">ادخل بإحدى بمنصات التواصل الاجتماعي</p>
                <div class="d-flex">
                    <button class="btn btn-sm btn-light rounded-3">
                        <img src="{{ asset('assets/icon/social_google.svg') }}">
                    </button>
                    <button class="btn btn-sm btn-light rounded-3 ms-2">
                        <img src="{{ asset('assets/icon/social_facebook.svg') }}">
                    </button>
                </div>
            </div>
            <div class="modal-body bg-white rounded-4 py-5">
                <p class="main-title position-relative fw-bold mx-auto mb-1">أدخل بياناتك</p>
                <p class="sub-title-form">أو أدخل رقم الهاتف وكلمة المرور</p>
                <form class="px-md-4 px-1" id="loginForm">
                    <div class="login-errors alert text-danger d-none text-center"></div>
                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/phone-2.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="loginMobile"
                               placeholder="رقم الهاتف">
                        <label class="ps-5" for="loginMobile">رقم الهاتف</label>
                    </div>
                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/password.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="loginPassword"
                               placeholder="كلمة المرور">
                        <label class="ps-5" for="loginPassword">كلمة المرور</label>
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary py-2 rounded-3 w-100 loginBtn">
                            <span class="me-auto">دخول</span>
                            <span class="arrow ms-2">&#129128;</span>
                        </button>
                    </div>
                </form>
            </div>
            <div class="modal-footer flex-column border-0">
                <p class="text-muted">في حالة عدم تذكر كلمة المرور بإمكانك</p>
                <a class="text-white" href="#">إعادة تعيين كلمة المرور</a>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0 gap-4 bg-transparent">
            <div class="modal-header border-0 rounded-4">
                <p class="modal-title">اشترك بإحدى بمنصات التواصل الاجتماعي</p>
                <div class="d-flex">
                    <button class="btn btn-sm btn-light rounded-3">
                        <img src="{{ asset('assets/icon/social_google.svg') }}">
                    </button>
                    <button class="btn btn-sm btn-light rounded-3 ms-2">
                        <img src="{{ asset('assets/icon/social_facebook.svg') }}">
                    </button>
                </div>
            </div>
            <div class="modal-body bg-white rounded-4 py-5">
                <p class="main-title position-relative fw-bold mx-auto mb-1">أدخل بياناتك</p>
                <p class="sub-title-form">أو أدخل بياناتك للاشتراك مع سبيد</p>
                <form class="px-md-4 px-1">

                    <div class="register-errors alert text-danger d-none text-center"></div>

                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/user.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="registerName"
                               placeholder="الاسم">
                        <label class="ps-5" for="registerName">الاسم</label>
                    </div>
                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/phone-2.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="registerMobile"
                               placeholder="رقم الهاتف">
                        <label class="ps-5" for="registerMobile">رقم الهاتف</label>
                    </div>
                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/email.svg') }}">
                        <input dir="rtl" type="email" class="form-control rounded-3 ps-5" id="registerEmail"
                               placeholder="البريد الاكتروني">
                        <label class="ps-5" for="registerEmail">البريد الالكتروني</label>
                    </div>
                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/password.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="registerPassword"
                               placeholder="كلمة المرور">
                        <label class="ps-5" for="registerPassword">كلمة المرور</label>
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary py-2 rounded-3 w-100 registerBtn">
                            <span class="me-auto">اشتراك</span>
                            <span class="arrow ms-2">&#129128;</span>
                        </button>
                    </div>
                </form>
            </div>
            <div class="modal-footer flex-column border-0">
                <p class="text-muted">بتسجيل حساب جديد مع سبيد أنت توافق على</p>
                <a class="text-white" href="#">الشروط والاحكام</a>
            </div>
        </div>
    </div>
</div>

<!-- Contact Us Modal -->
<div class="modal fade" id="contactUsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0 gap-4 bg-transparent">
            <div class="modal-body bg-white rounded-4 py-5">
                <p class="main-title position-relative fw-bold mx-auto mb-1">تواصل معنا</p>
                <p class="sub-title-form">شاركنا استفساراتك وآرائك</p>
                <form class="px-md-4 px-1">
                    <div class="contact-errors alert text-danger d-none text-center"></div>

                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/user.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="contactName"
                               placeholder="الاسم">
                        <label class="ps-5" for="registerName">الاسم</label>
                    </div>
                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/phone-2.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="contactMobile"
                               placeholder="رقم الهاتف">
                        <label class="ps-5" for="registerMobile">رقم الهاتف</label>
                    </div>

                    <div class="form-floating mb-3">
                        <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                             src="{{ asset('assets/icon/email.svg') }}">
                        <input type="text" class="form-control rounded-3 ps-5" id="contactTitle"
                               placeholder="عنوان الرسالة">
                        <label class="ps-5" for="registerMobile">عنوان الرسالة</label>
                    </div>

                    <div class="form-floating mb-3">
                        <textarea type="text" class="form-control rounded-3 ps-5" id="contactMessage"
                                  placeholder="محتوى الرسالة"></textarea>
                        <label class="ps-5" for="registerMobile">
                            محتوى الرسالة
                        </label>
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary py-2 rounded-3 w-100 contactBtn">
                            <span class="me-auto">إرسال</span>
                            <span class="arrow ms-2">&#129128;</span>
                        </button>
                    </div>
                </form>
            </div>
            <div class="modal-footer flex-column border-0">
                <p class="text-muted">بتسجيل حساب جديد مع سبيد أنت توافق على</p>
                <a class="text-white" href="#">الشروط والاحكام</a>
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('assets/js/jquery-3.6.3.min.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assets/js/swiper.min.js') }}"></script>
<script src="{{ asset('assets/js/app.js') }}"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    // Login Functionality
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
                location.href = "{{ route('account.index') }}"
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

    // Register Functionality
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
                location.href = "{{ route('account.index') }}"
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

    // Contact Functionality
    $(document).on('click', '.contactBtn', function(e) {
        e.preventDefault();

        var name = $('#contactName').val(),
            mobile = $('#contactMobile').val(),
            title = $('#contactTitle').val(),
            message = $('#contactMessage').val();

        $.ajax({
            url: "{{ route('contact.store') }}",
            type: "GET",
            data: {
                name: name,
                mobile: mobile,
                title: title,
                message: message,
            },
            success: function(data) {
                $('#contactName').val('');
                $('#contactMobile').val('');
                $('#contactTitle').val('');
                $('#contactMessage').val('');

                $('#contactUsModal').modal('hide');

                Swal.fire({
                    title: 'تم',
                    text: 'لقد تم الإرسال بنجاح',
                    icon: "success",
                    buttonsStyling: false,
                    confirmButtonText: 'إغلاق',
                    customClass: {
                        confirmButton: "btn btn-primary"
                    }
                });

            },
            error: function(data) {
                $('.contact-errors').empty();
                $('.contact-errors').addClass('d-none');
                $.each(data.responseJSON.errors, function (key, value) {
                    $('.contact-errors').removeClass('d-none');
                    $('.contact-errors').append(`
                            <span>` + value + `</span> <br>
                        `)
                });
            },
        })
    });
</script>
@stack('js')
</body>

</html>
