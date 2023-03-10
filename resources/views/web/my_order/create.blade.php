<x-front-layout title="Create Order">
    <section>
        <div class="py-5" style="background: #0B2242;">
            <div class="container">
                <div class="page-title-2 my-5 ms-5 position-relative">
                    <h1 class="fw-bold">طلب المنتجات</h1>
                    <p>تأكيد تفاصيل المنتج والطلب مع سبيد تريدينج</p>
                </div>
            </div>
        </div>
    </section>


    <section class="py-4 mb-5 position-relative">
        <div class="position-absolute top-0 start-0 end-0" style="height: 150px; background: #0B2242;"></div>
        <div class="container">
            <div class="row justify-content-start justify-content-xl-center items-create">
                @include('web.my_order.items_create')
            </div>
        </div>
    </section>

    <div class="modal fade" id="discountCodeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 gap-4 bg-transparent">
                <div class="modal-body bg-white rounded-4 py-5">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">كود الخصم</p>
                    <form action="{{ route('coupon.store') }}" class="px-md-4 px-1">

                        <div class="error d-none"></div>

                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/discount_code.svg') }}" width="25">
                            <input name="code" type="text" class="form-control rounded-3 ps-5" id="code" placeholder="كود الخصم">
                            <label class="ps-5" for="code">كود الخصم</label>
                        </div>

                        <div class="col">
                            <button type="submit" class="btn btn-light py-2 rounded-4 w-100 codeBtn">
                                <span class="me-auto">تأكيد</span>
                                <img src="{{ asset('assets/icon/check-2.svg') }}" class="float-end" width="25">
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 gap-4 bg-transparent">
                <div class="modal-body bg-white rounded-4 py-5">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">العنوان</p>
                    <form class="px-md-4 px-1">

                        <div class="text-danger text-center my-4 login-errors"></div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/place.svg') }}" width="25">
                            <input type="text" name="name" class="form-control rounded-3 ps-5" id="addressName" placeholder="اسم العنوان">
                            <label class="ps-5" for="addressName">اسم العنوان</label>
                        </div>
                        <div class="row g-2">
                            <div class="col-md">
                                <div class="form-floating mb-3">
                                    <select class="form-select addressGovernorateCreate" data-type="create" id="addressGovernorate" name="governorate_id">
                                        <option>المحافظة</option>
                                        @foreach( $governorates as $governorate )
                                            <option value="{{ $governorate->id }}">
                                                {{ $governorate->getTranslation('name', app()->getLocale()) }}
                                            </option>
                                        @endforeach

                                    </select>
                                    <label for="floatingSelectGrid">المحافظة</label>
                                </div>
                            </div>

                            <div class="col-md">
                                <div class="form-floating mb-3">
                                    <select class="form-select addressCity" id="addressCity" name="city_id" disabled>
                                        <option selected>المدينة</option>
                                        @foreach( $cities as $city )
                                            <option value="{{ $city->id }}">
                                                {{ $city->getTranslation('name', app()->getLocale()) }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <label for="floatingSelectGrid">المدينة</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" name="address" class="form-control rounded-3 ps-5" id="address" placeholder="تفاصيل العنوان">
                            <label class="ps-5" for="address">تفاصيل العنوان</label>
                        </div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/gps.svg') }}" width="25">
                            <input type="text" name="lan" class="form-control rounded-3 ps-5" id="addressLan" placeholder="تحديد الموقع">
                            <label class="ps-5" for="addressLan">خطوط الطول</label>
                        </div>

                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/gps.svg') }}" width="25">
                            <input type="text" name="lat" class="form-control rounded-3 ps-5" id="addressLat" placeholder="تحديد الموقع">
                            <label class="ps-5" for="addressLat">خطوط العرض</label>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" name="is_primary" type="checkbox" value="" id="addressPrimary" checked style="pointer-events: none">
                            <label class="form-check-label" for="addressPrimary">
                                استخدام كعنوان أساسي
                            </label>
                        </div>
                        <div class="col">
                            <button type="submit" class="btn btn-light py-2 rounded-4 w-100 addressBtn">
                                <span class="me-auto">تأكيد</span>
                                <img src="{{ asset('assets/icon/check-2.svg') }}" class="float-end" width="25">
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="addressChange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 gap-4 bg-transparent">
                <div class="modal-body bg-white rounded-4 py-5">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">العنوان</p>
                    <form class="px-md-4 px-1">
                        <div class="row g-2">
                            <div class="col-md">
                                <div class="form-floating mb-3">
                                    <select class="form-select addressChange" id="addressChange">
                                        <option>اختر العنوان</option>
                                        @foreach( auth()->user()->addresses as $address )
                                            <option value="{{ $address->id }}">
                                                {{ $address->name }}
                                            </option>
                                        @endforeach

                                    </select>
                                    <label for="floatingSelectGrid">المحافظة</label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 gap-4 bg-transparent">
                <div class="modal-body bg-white rounded-4 py-5">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">طريقة الدفع</p>
                    <form class="px-md-4 px-1">

                        <div class="form-check my-check-lg">
                            <input class="form-check-input" type="radio" value="1" data-name="دفع بالبطاقة الائتمانية" name="paymentMethod" id="paymentMethodOne" checked>
                            <label class="form-check-label fw-bold" for="paymentMethodOne">
                                دفع بالبطاقة الائتمانية
                            </label>
                            <small class="d-block fs-6">جميع المعاملات المالية تتم عبر قنوات آمنة ومشفرة</small>
                        </div>

                        <hr class="border">

                        <div class="form-check my-check-lg mb-3">
                            <input class="form-check-input" type="radio" value="0" data-name="الدفع عند الاستلام" name="paymentMethod" id="paymentMethodTwo">
                            <label class="form-check-label fw-bold" for="paymentMethodTwo">
                                الدفع عند الاستلام
                            </label>
                            <span class="d-block fs-6">ادفع قيمة الطلب للمندوب عند الاستلام</span>
                        </div>

                        <div class="col">
                            <button type="submit" class="btn btn-light py-2 rounded-4 w-100 paymentBtn">
                                <span class="me-auto">التالي</span>
                                <img src="{{ asset('assets/icon/arrow_next-2.svg') }}" class="float-end" width="25">
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    @push('js')
        <script>
            // Get City
            $(document).on('change', '.addressGovernorateCreate, addressGovernorateEdit', function(e) {
                e.preventDefault();

                if( $(this).data('type') == 'create' ) {
                    var id = $('.addressGovernorateCreate').val();
                }else{
                    var id = $('.addressGovernorateEdit').val();
                }

                $.ajax({
                    url: "{{ route('address.getCity') }}",
                    type: "GET",
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        if( data.cities ) {
                            $('.addressCity').attr('disabled', false)
                            $('.addressCity').empty();
                            $('.addressCity').append(`
                                    <option value="">المدينة</option>
                                `)
                            $.each(data.cities, function(key, value) {
                                $('.addressCity').append(`
                                    <option value="`+value.id+`">`+value.name.en+`</option>
                                `)
                            })
                        };
                    },
                    error: function(data) {

                    },

                })
            });

            $(document).on('click', '.codeBtn', function(e) {
                e.preventDefault();

                var code = $('#code').val();

                $.ajax({
                    url: "{{ route('coupon.store') }}",
                    type: "GET",
                    data: {
                        code: code,
                    },
                    success: function(data) {
                        if( data.error ) {
                            $('.error').removeClass('d-none');
                            $('.error').empty();

                            $('.error').append(`
                                <span class="text-danger text-center">`+ data.error +`</span>
                            `)

                        }else{
                            $('.error').addClass('d-none');
                            $('.error').empty();

                            code = $('#code').val('');

                            Swal.fire({
                                title: 'تم',
                                text: 'لقد تم الخصم بنجاح',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });
                            $('#discountCodeModal').modal('hide');
                            $.ajax({
                                url: "{{ route('my_order.create') }}",
                            }).done(function (data) {
                                $(".items-create").html(data);
                            });

                        }
                    },
                    error: function(data) {

                    }

                })
            })


            $(document).on('click', '.paymentBtn', function(e) {
                e.preventDefault();

                if( $('#paymentMethodOne').is(':checked') ) {

                    $('.paymentResult').text( $('#paymentMethodOne').data('name') )

                    $('#type').val( $('#paymentMethodOne').val() )

                    console.log( $('#type').val() )

                }else if ( $('#paymentMethodTwo').is(':checked') ) {

                    $('.paymentResult').text( $('#paymentMethodTwo').data('name') )

                    $('#type').val( $('#paymentMethodTwo').val() )

                    console.log( $('#type').val() )

                }



                $('#paymentModal').modal('hide');
            })

            // Create Address
            $(document).on('click', '.addressBtn', function(e) {
                e.preventDefault();

                var name = $('#addressName').val(),
                    address = $('#address').val(),
                    city_id = $('#addressCity').val(),
                    lat = $('#addressLat').val(),
                    lng = $('#addressLan').val();

                if( $('#addressPrimary').is(':checked') ) {
                    var primary = 1;
                }else{
                    primary = 0;
                };

                $.ajax({
                    url: "{{ route('address.store') }}",
                    type: "GET",
                    data:{
                        name: name,
                        address: address,
                        city_id: city_id,
                        lng: lng,
                        lat: lat,
                        primary: primary,
                    },
                    success: function(data) {
                        Swal.fire({
                            title: 'تم',
                            text: 'لقد تم الحفظ بنجاح',
                            icon: "success",
                            buttonsStyling: false,
                            confirmButtonText: 'إغلاق',
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                        $('#addressModal').modal('hide');
                        $.ajax({
                            url: "{{ route('my_order.create') }}",
                        }).done(function (data) {
                            $(".items-create").html(data);
                        });

                        $('#addressName').val('');
                        $('#address').val('');
                        $('#addressCity').val('');
                        $('#addressLat').val('');
                        $('#addressLan').val('');
                    },
                    error: function(data) {
                        $('.login-errors').empty();
                        $('.login-errors').addClass('d-none');
                        $.each(data.responseJSON.errors, function (key, value) {
                            $('.login-errors').removeClass('d-none');
                            $('.login-errors').append(`
                                <span>` + value + `</span> <br>
                            `)
                        });
                    },
                })

            })

            $(document).on('change', '#addressChange', function(e) {
                var id = $(this).val();

                $.ajax({
                    url: "{{ route('address.getAddress') }}",
                    type: "GET",
                    data: {
                        id: id,
                    },
                    success: function(data){
                        $('.setAddress').text(data.address.address);

                        $('#address').val( data.address.id );

                        $('#addressChange').modal('hide');
                    },
                    error: function(data){

                    },
                })
            });
        </script>
    @endpush

</x-front-layout>
