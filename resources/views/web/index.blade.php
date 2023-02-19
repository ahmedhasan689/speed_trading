<x-front-layout title="Home">
    <section class="hero mt-3 mt-lg-5">
        <div dir="rtl" class="swiper heroSwiper">
            <div class="swiper-wrapper">
                @foreach($sliders as $slider)
                    @if( $slider->type == 'image' )
                        <a href="{{ url($slider->target_type . '/' . $slider->target_id) }}" class="swiper-slide">
                            <img src="{{ asset('/') . $slider->image }}" alt="">
                        </a>
                    @else
                        <a href="{{ url($slider->image) }}" class="swiper-slide">
                            <iframe src="{{ url($slider->image) }}" style="width: 100%; height: 445px"></iframe>
                        </a>
                    @endif
                @endforeach
            </div>
            <div class="d-flex align-items-center justify-content-center gap-3 my-3">
                <button class="btn btn-light rounded-3 hero-next">&#129130;</button>
                <div class="swiper-pagination"></div>
                <button class="btn btn-light rounded-3 hero-prev">&#129128;</button>
            </div>
        </div>
    </section>

    <section class="companies mt-5">
        <div style="background: #E6EDF7; padding: 2rem 10px;" class="container rounded-4">
            <div class="d-flex justify-content-center align-items-center gap-5 flex-column flex-lg-row">
                @foreach( $brands as $brand )
                    <a href="{{ route('brand.show', ['id' => $brand->id]) }}">
                        <img src="{{ asset('/') . $brand->image }}" height="20" alt="">
                    </a>
                @endforeach

            </div>
        </div>
    </section>


    <section class="offer-product-card mt-6">
        <div class="container">
            <div class="d-flex flex-column flex-lg-row gap-3">
                <div class="p-2 ads bg-light d-flex align-items-center justify-content-center">advertisement</div>
                <div class="p-2 flex-grow-1">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">أحدث العروض</p>
                    <div class="row items-card">

                        @include('web.home.items_card')

                    </div>
                    <a href="{{ route('brand.show', ['id' => \App\Models\brand::first()->id ] ) }}" style="width: 250px" class="btn btn-light rounded-3 d-block text-center mt-4 mx-auto px-5 py-2">
                        <span class="me-auto">تصفح كل العروض</span>
                        <span class="arrow ms-2">&#129128;</span>
                    </a>
                </div>
                <div class="p-2 ads bg-light d-flex align-items-center justify-content-center">advertisement</div>
            </div>
        </div>
    </section>


    <section class="mt-6 middle-sec">
        <div class="container">
            <div class="row g-3">
                <div class="col-lg-8">
                    <div class="rounded-4 py-5 px-4 right">
                        <div class="sec-title mb-5 text-center">
                            <h3>الحلول المتكاملة من سبيد</h3>
                            <span>نجاح عملائنا يلهمنا لتحقيق الإنجازات. تقدم سبيد حلول امنية متكاملة وفعّالة لمنشئات
                                متعددة</span>
                        </div>
                        <div class="row">
                            @foreach( $solutions as $solution )
                                <a href="{{ route('solution.index') }}" style="color: #0B2242; text-decoration: none" class="col-lg-3 col-md-4 col-sm-6 mb-3">
                                    <div class="card shadow-sm">
                                        <img src="{{ asset('/') . $solution->images()->first()->url }}" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h6 class="fw-bold text-center">
                                                {{ $solution->getTranslation('title', app()->getLocale()) }}
                                            </h6>
                                        </div>
                                    </div>
                                </a>
                            @endforeach
                        </div>
                        <a href="{{ route('solution.index') }}" style="width: 250px" class="btn btn-primary rounded-3 d-block text-center mt-4 mx-auto px-5 py-2">
                            <span>عرض كل الحلول</span>
                            <span class="arrow ms-2">&#129128;</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="rounded-4 py-5 px-4 left">
                        <div class="sec-title mb-3 text-center">
                            <h3>حمّل تطبيق سبيد</h3>
                            <span>استخدم تطبيق سبيد فور تريدينج لطلب كل المنتجات المعروضة في أي وقت وأي مكان</span>
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <a href="#">
                                <img class="apple" src="{{ asset('assets/icon/app-store.svg') }}" alt="Download on the App Store">
                            </a>
                            <a href='#'>
                                <img class="android" alt='Get it on Google Play' src='{{ asset('assets/icon/google-play.png') }}' />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="mt-6">
        <div class="container">
            <div class="d-flex flex-column flex-lg-row gap-3">
                <div class="p-2 ads bg-light d-flex align-items-center justify-content-center">advertisement</div>
                <div class="p-2 flex-grow-1">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">أحدث الفعاليات</p>
                    <div class="row">
                        @foreach( $events as $event )
                            <a href="{{ route('event.show', ['id' => $event->id]) }}" style="text-decoration: none; color: #0B2242" class="col-lg-4 col-md-6">
                                <div class="card mb-3">
                                    <img src="{{ asset('/') . $event->images()->first()->url }}" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">
                                            {{ $event->getTranslation('title', app()->getLocale()) }}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    </div>

                    <a href="{{ route('event.index') }}" style="width: 250px" class="btn btn-light rounded-3 d-block text-center mt-4 mx-auto px-5 py-2">
                        <span class="me-auto">عرض كل الفعاليات</span>
                        <span class="arrow ms-2">&#129128;</span>
                    </a>
                </div>
                <div class="p-2 ads bg-light d-flex align-items-center justify-content-center">advertisement</div>
            </div>
        </div>
    </section>

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
                    <form class="px-md-4 px-1">
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
                            <button type="submit" class="btn btn-primary py-2 rounded-3 w-100">
                                <span class="me-auto loginBtn">دخول</span>
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


    @push('js')
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
        </script>

        <script>
            $(document).on('click', '.btn-like', function(e) {
                e.preventDefault();

                var id = $(this).data('id');

                if( $(this).hasClass('active') ){

                    $.ajax({
                        url: "{{ route('my_favorite.delete') }}",
                        type: "GET",
                        data: {
                            id: id,
                        },
                        success: function(data) {
                            Swal.fire({
                                title: 'تم',
                                text: 'لقد تم إزالتها بنجاح',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });

                            $.ajax({
                                url: "{{ route('home') }}",
                            }).done(function (data) {
                                $(".items-card").html(data);
                            });
                        },
                        error: function(data) {
                            console.log(data)
                        }
                    })

                }else{

                    $.ajax({
                        url: "{{ route('my_favorite.store') }}",
                        type: "GET",
                        data: {
                            id: id,
                        },
                        success: function(data) {
                            Swal.fire({
                                title: 'تم',
                                text: 'لقد تم إضافتها بنجاح',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });

                            $.ajax({
                                url: "{{ route('home') }}",
                            }).done(function (data) {
                                $(".items-card").html(data);
                            });
                        },
                        error: function(data) {
                            console.log(data)
                        }
                    })

                }
            });
        </script>
    @endpush
</x-front-layout>
