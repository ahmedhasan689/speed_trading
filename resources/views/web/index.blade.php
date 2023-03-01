<x-front-layout title="Home">
    <section class="hero mt-3 mt-lg-5">
        <div dir="rtl" class="swiper heroSwiper">
            <div class="swiper-wrapper">
                @foreach($sliders as $slider)
                    @if( $slider->type == 'image' )
                        <a href="{{ url($slider->target_type . '/' . $slider->target_id) }}" class="swiper-slide">
                            <img src="{{ asset('/') . $slider->image }}" height="445" alt="">
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
                    <a href="{{ route('item.discount') }}" style="width: 250px" class="btn btn-light rounded-3 d-block text-center mt-4 mx-auto px-5 py-2">
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
