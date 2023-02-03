@extends('layouts.front_layout')

@section('title', 'Account')

@section('content')

    <section class="title">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span class="line"></span>

                    <div>
                        <h2>
                            حسابي
                        </h2>
                        <p>
                            بياناتك الشخصية مع سبيد
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section class="card">
        <div class="container">
            <div class="row">
                <div class="card-box">
                    <h5>البيانات الشخصية</h5>
                </div>
                <div class="card-decsription">
                    @include('web.account.card-info')
                </div>
            </div>

            <div class="row">
                <div class="profile-buttons">
                    <button class="btn" data-bs-toggle="modal" data-bs-target="#editProfileModal">
                        <img src="{{ asset('web/img/edit.png') }}" width="24" height="24">
                        تعديل بيانات
                    </button>
                    <button class="btn" data-bs-toggle="modal" data-bs-target="#editPasswordModal">
                        <img src="{{ asset('web/img/password.png') }}">
                        تعديل كلمة المرور
                    </button>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModal"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
                        <div class="modal-body">
                            <h5 class="text-center">
                                تعديل البيانات
                            </h5>
                            <form action="">
                                <div class="alert text-danger text-center d-none login-errors"></div>
                                <div class="group">
                                    <img src="{{ asset('web/img/user.png') }}" height="24" width="24">
                                    <input id="nameInput" class="form-control" name="name" type="text"
                                           placeholder="الأسم"/>
                                    <label id="myInput-label">الأسم</label>
                                </div>
                                <div class="group">
                                    <img src="{{ asset('web/img/phone2.png') }}" height="24" width="24">
                                    <input id="mobileInput" class="form-control" name="mobile" type="text"
                                           placeholder="رقم الهاتف"/>
                                    <label id="myInput-label">رقم الهاتف</label>
                                </div>
                                <div class="group">
                                    <img src="{{ asset('web/img/email.png') }}" height="24" width="24">
                                    <input id="emailInput" class="form-control" name="email" type="email"
                                           placeholder="البريد الإلكتروني"/>
                                    <label id="myInput-label">البريد الإلكتروني</label>
                                </div>

                                <div class="group">
                                    <button type="submit" class="btn editInfoBtn">
                                        <img src="{{ asset('web/img/check.png') }}" alt="">
                                        حفظ
                                    </button>
                                </div>

                            </form>
                        </div>
                        <!-- <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div> -->
                    </div>
                </div>
            </div>

            <div class="modal fade" id="editPasswordModal" tabindex="-1" aria-labelledby="editPasswordModal"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
                        <div class="modal-body">
                            <h5 class="text-center">
                                تعديل البيانات
                            </h5>
                            <form action="">
                                <div class="alert text-danger text-center d-none reset-password-errors"></div>
                                <div class="group">
                                    <img src="{{ asset('web/img/password.png') }}" height="24" width="24">
                                    <input id="oldPassword" class="form-control" name="old_password" type="password"
                                           placeholder="كلمة المرور الحالية"/>
                                    <label id="myInput-label">كلمة المرور الحالية</label>
                                </div>
                                <div class="group">
                                    <img src="{{ asset('web/img/password.png') }}" height="24" width="24">
                                    <input id="password" class="form-control" name="password" type="password"
                                           placeholder="كلمة المرور الجديدة"/>
                                    <label id="myInput-label">كلمة المرور الجديدة</label>
                                </div>
                                <div class="group">
                                    <img src="{{ asset('web/img/password.png') }}" height="24" width="24">
                                    <input id="passwordConfirmation" class="form-control" type="password" name="password_confirmation"
                                           placeholder="تأكيد كلمة المرور"/>
                                    <label id="myInput-label">تأكيد كلمة المرور</label>
                                </div>

                                <div class="group">
                                    <button type="submit" class="btn editPasswordBtn">
                                        <img src="{{ asset('web/img/check.png') }}" alt="">
                                        حفظ
                                    </button>
                                </div>

                            </form>
                        </div>
                        <!-- <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')
    <script>
        $(document).on('click', '.editInfoBtn', function (e) {
            e.preventDefault();

            var name = $('#nameInput').val(),
                mobile = $('#mobileInput').val(),
                email = $('#emailInput').val();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: "{{ route('account.update') }}",
                type: "PUT",
                data: {
                    name: name,
                    mobile: mobile,
                    email: email,
                },
                success: function (data) {
                    Swal.fire({
                        title: 'Done',
                        text: 'Data Has Been Changed',
                        icon: "success",
                        buttonsStyling: false,
                        confirmButtonText: 'Confirm',
                        customClass: {
                            confirmButton: "btn btn-primary"
                        }
                    });
                    $('#editProfileModal').modal('hide');
                    $.ajax({
                        url: "{{ route('account.index') }}",
                    }).done(function (data) {
                        $(".card-decsription").html(data);
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

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: "{{ route('account.resetPassword') }}",
                type: "PUT",
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
                        Swal.fire({
                            title: 'Done',
                            text: 'Data Has Been Changed',
                            icon: "success",
                            buttonsStyling: false,
                            confirmButtonText: 'Confirm',
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                        $('#editPasswordModal').modal('hide');
                        $.ajax({
                            url: "{{ route('account.index') }}",
                        }).done(function (data) {
                            $(".card-decsription").html(data);
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
@endsection
