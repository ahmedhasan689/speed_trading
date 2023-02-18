<x-front-layout title="Account">

    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title mt-5 mb-3 ms-5 position-relative">
                    <h1 class="fw-bold">حسابي</h1>
                    <p>بياناتك الشخصية مع سبيد</p>
                </div>
            </div>
        </div>
    </section>

    <div class="card-description">
        @include('web.account.card-info')
    </div>

    <div class="modal fade" id="editDataModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 gap-4 bg-transparent">
                <div class="modal-body bg-white rounded-4 py-5">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">تعديل البيانات</p>
                    <form class="px-md-4 px-1">
                        <div class="login-errors text-danger text-center"></div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/user.svg') }}">
                            <input type="text" class="form-control rounded-3 ps-5" id="nameInput" value="{{ $user->name }}" placeholder="الاسم">
                            <label class="ps-5" for="nameInput">الاسم</label>
                        </div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/phone-2.svg') }}">
                            <input type="text" class="form-control rounded-3 ps-5" id="mobileInput" value="{{ $user->mobile }}" placeholder="رقم الهاتف">
                            <label class="ps-5" for="mobileInput">رقم الهاتف</label>
                        </div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/email.svg') }}">
                            <input type="email" class="form-control rounded-3 ps-5" id="emailInput" value="{{ $user->email }}" placeholder="البريد الاكتروني">
                            <label class="ps-5" for="emailInput">البريد الالكتروني</label>
                        </div>
                        <div class="col">
                            <button type="submit" class="btn btn-light py-2 rounded-4 w-100 editInfoBtn">
                                <span class="me-auto">حفظ</span>
                                <img src="{{ asset('assets/icon/check-2.svg') }}" class="float-end" width="25">
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="editPasswordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 gap-4 bg-transparent">
                <div class="modal-body bg-white rounded-4 py-5">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">تعديل كلمة المرور</p>
                    <form class="px-md-4 px-1">
                        <div class="reset-password-errors my-2 text-danger text-center"></div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/password.svg') }}" width="25">
                            <input type="password" class="form-control rounded-3 ps-5" id="oldPassword" placeholder="كلمة المرور الحالية">
                            <label class="ps-5" for="oldPassword">كلمة المرور الحالية</label>
                        </div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/password.svg') }}" width="25">
                            <input type="password" class="form-control rounded-3 ps-5" id="password" placeholder="كلمة المرور الجديدة">
                            <label class="ps-5" for="password">كلمة المرور الجديدة</label>
                        </div>
                        <div class="form-floating mb-3">
                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                 src="{{ asset('assets/icon/password.svg') }}" width="25">
                            <input type="password" class="form-control rounded-3 ps-5" id="passwordConfirmation" placeholder="تأكيد كلمة المرور">
                            <label class="ps-5" for="passwordConfirmation">تأكيد كلمة المرور</label>
                        </div>
                        <div class="col">
                            <button type="submit" class="btn btn-light py-2 rounded-4 w-100 editPasswordBtn">
                                <span class="me-auto">حفظ</span>
                                <img src="{{ asset('assets/icon/check-2.svg') }}" class="float-end" width="25">
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    @push('js')
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            $(document).on('click', '.editInfoBtn', function (e) {
                e.preventDefault();

                var name = $('#nameInput').val(),
                    mobile = $('#mobileInput').val(),
                    email = $('#emailInput').val();

                $.ajax({
                    url: "{{ route('account.update') }}",
                    type: "GET",
                    data: {
                        name: name,
                        mobile: mobile,
                        email: email,
                    },
                    success: function (data) {
                        Swal.fire({
                            title: 'تم',
                            text: 'لقد تم التعديل بنجاح',
                            icon: "success",
                            buttonsStyling: false,
                            confirmButtonText: 'إغلاق',
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                        $('#editDataModal').modal('hide');
                        $.ajax({
                            url: "{{ route('account.index') }}",
                        }).done(function (data) {
                            $(".card-description").html(data);
                        });
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
                    },

                })

            });

            $(document).on('click', '.editPasswordBtn', function (e) {
                e.preventDefault();

                var old_password = $('#oldPassword').val(),
                    password = $('#password').val(),
                    password_confirmation = $('#passwordConfirmation').val();

                $.ajax({
                    url: "{{ route('account.resetPassword') }}",
                    type: "GET",
                    data: {
                        old_password: old_password,
                        password: password,
                        password_confirmation: password_confirmation,
                    },
                    success: function (data) {
                        if( data.password ) {
                            $('.reset-password-errors').empty();
                            $('.reset-password-errors').append(`
                                <span>` + data.password  + `</span> <br>
                            `)
                        }else{
                            $('#oldPassword').val();
                            $('#password').val();
                            $('#passwordConfirmation').val();

                            Swal.fire({
                                title: 'تم',
                                text: 'تم تغيير كلمة المرور',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });
                            $('#editPasswordModal').modal('hide');
                            $.ajax({
                                url: "{{ route('account.index') }}",
                            }).done(function (data) {
                                $(".card-description").html(data);
                            });
                        }
                    },
                    error: function (data) {
                        $('.reset-password-errors').empty();
                        $('.reset-password-errors').addClass('d-none');
                        $.each(data.responseJSON.errors, function (key, value) {
                            $('.reset-password-errors').removeClass('d-none');
                            $('.reset-password-errors').append(`
                                <span>` + value + `</span> <br>
                            `)
                        });
                    },

                })

            });
        </script>
    @endpush
</x-front-layout>
