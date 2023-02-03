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
                    <div class="mb-2">
                        <img src="img/user.png" class="img-one" style="z-index: 8;">
                        <span>
                            أحمد رجب
                        </span>
                    </div>

                    <div class="mb-2">
                        <img src="img/phone2.png" class="img-one" style="z-index: 8;">
                        <span>
                            {{ $user->mobile }}
                        </span>
                    </div>

                    <div>
                        <img src="img/email.png" class="img-one" style="z-index: 8;">
                        <span>
                            ahm19edhasan@gmail.com
                        </span>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="profile-buttons">
                    <button class="btn" data-bs-toggle="modal" data-bs-target="#editProfileModal">
                        <img src="img/edit.png" width="24" height="24">
                        تعديل بيانات
                    </button>
                    <button class="btn" data-bs-toggle="modal" data-bs-target="#editPasswordModal">
                        <img src="img/password.png">
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
                                <div class="group">
                                    <img src="img/user.png" height="24" width="24">
                                    <input id="myInput" class="form-control" type="text" placeholder="الأسم" />
                                    <label id="myInput-label">الأسم</label>
                                </div>
                                <div class="group">
                                    <img src="img/phone2.png" height="24" width="24">
                                    <input id="myInput" class="form-control" type="text" placeholder="رقم الهاتف" />
                                    <label id="myInput-label">رقم الهاتف</label>
                                </div>
                                <div class="group">
                                    <img src="img/email.png" height="24" width="24">
                                    <input id="myInput" class="form-control" type="text"
                                           placeholder="البريد الإلكتروني" />
                                    <label id="myInput-label">البريد الإلكتروني</label>
                                </div>

                                <div class="group">
                                    <button class="btn">
                                        <img src="img/check.png" alt="">
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
                                <div class="group">
                                    <img src="img/password.png" height="24" width="24">
                                    <input id="myInput" class="form-control" type="password"
                                           placeholder="كلمة المرور الحالية" />
                                    <label id="myInput-label">كلمة المرور الحالية</label>
                                </div>
                                <div class="group">
                                    <img src="img/password.png" height="24" width="24">
                                    <input id="myInput" class="form-control" type="password"
                                           placeholder="كلمة المرور الجديدة" />
                                    <label id="myInput-label">كلمة المرور الجديدة</label>
                                </div>
                                <div class="group">
                                    <img src="img/password.png" height="24" width="24">
                                    <input id="myInput" class="form-control" type="password"
                                           placeholder="تأكيد كلمة المرور" />
                                    <label id="myInput-label">تأكيد كلمة المرور</label>
                                </div>

                                <div class="group">
                                    <button class="btn">
                                        <img src="img/check.png" alt="">
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
