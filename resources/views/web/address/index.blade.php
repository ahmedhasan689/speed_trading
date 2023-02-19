<x-front-layout title="Addresses">

    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">عناويني</h1>
                    <p>قم بإضافة عناوينك لتيسير عمليات الشراء المستقبلية عبر سبيد</p>
                </div>

                @if( $addresses->count() == 0 )
                    <button class="btn btn-primary py-2 ms-5 rounded-3" style="width: 230px;" data-bs-toggle="modal" data-bs-target="#addressModal">
                        <span>إضافة عنوان جديد</span>
                        <img src="{{ asset('assets/icon/join.svg') }}" class="float-end" width="23">
                    </button>
                @endif
            </div>
        </div>
    </section>
    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 150px;"></div>
        <div class="container" id="address-card">
            @include('web.address.address-card')
        </div>
    </section>

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
                            <input class="form-check-input" name="is_primary" type="checkbox" value="" id="addressPrimary">
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

            // Create Address
            $(document).on('click', '.addressBtn', function(e) {
                e.preventDefault();

                var name = $('#addressName').val(),
                    address = $('#address').val(),
                    city_id = $('.addressCity').val(),
                    governorate_id = $('#addressGovernorate').val(),
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
                            url: "{{ route('address.index') }}",
                        }).done(function (data) {
                            $("#address-card").html(data);
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

            // Edit Address
            $(document).on('click', '.editModal', function(e) {

                var id = $(this).data('id');
                console.log(id);

                $(document).on('click', '.addressBtnEdit', function(e) {
                    e.preventDefault();

                    var name = $('#addressNameEdit-'+id).val(),
                        address = $('#addressEdit-'+id).val(),
                        city_id = $('.addressCityEdit-'+id).val(),
                        lat = $('#addressLatEdit-'+id).val(),
                        lng = $('#addressLanEdit-'+id).val();

                    if( $('#addressPrimaryEdit-'+id).is(':checked') ) {
                        var primary = 1;
                    }else{
                        primary = 0;
                    };

                    $.ajax({
                        url: "{{ route('address.update') }}",
                        type: "GET",
                        data:{
                            name: name,
                            address: address,
                            city_id: city_id,
                            lng: lng,
                            lat: lat,
                            primary: primary,
                            id: id,
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
                            $('#addressModalEdit-'+id).modal('hide');
                            $.ajax({
                                url: "{{ route('address.index') }}",
                            }).done(function (data) {
                                $("#address-card").html(data);
                            });
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

            })

            // Delete Address
            $(document).on('click', '.deleteBtn', function(e) {
                e.preventDefault();

                var id = $(this).data('id');

                $.ajax({
                    url: "{{ route('address.delete') }}",
                    type: "GET",
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        Swal.fire({
                            title: 'تم',
                            text: 'لقد تم الحذف بنجاح',
                            icon: "success",
                            buttonsStyling: false,
                            confirmButtonText: 'إغلاق',
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                        $.ajax({
                            url: "{{ route('address.index') }}",
                        }).done(function (data) {
                            $("#address-card").html(data);
                        });
                    },
                    error: function(data) {
                        console.log(data)
                    }
                })
            });
        </script>
    @endpush

</x-front-layout>
