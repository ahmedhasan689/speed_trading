<section class="py-4 mb-5 position-relative">
    <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 130px;"></div>
    <div class="container">
        <div class="row justify-content-start justify-content-xl-center">
            <div class="col-lg-4">
                <div class="card mb-4">
                    <div class="card-header border-dark border-opacity-10 bg-transparent py-4">
                        <p class="main-title position-relative fw-bold mb-0 mx-auto">البيانات الشخصية</p>
                    </div>
                    <div class="card-body">
                        <div class="d-flex align-items-center gap-4 ms-4 mb-3">
                            <img src="{{ asset('assets/icon/user.svg') }}" width="25">
                            <span>
                                {{ $user->name }}
                            </span>
                        </div>
                        <div class="d-flex align-items-center gap-4 ms-4 mb-3">
                            <img src="{{ asset('assets/icon/phone-2.svg') }}" width="25">
                            <span>
                                {{ $user->mobile }}
                            </span>
                        </div>
                        <div class="d-flex align-items-center gap-4 ms-4 mb-3">
                            <img src="{{ asset('assets/icon/email.svg') }}" width="25">
                            <span>
                                {{ $user->email }}
                            </span>
                        </div>
                    </div>
                </div>

                <div class="text-center">
                    <button class="btn btn-light w-75 p-3 rounded-4 mb-3" data-bs-toggle="modal" data-bs-target="#editDataModal">
                        <span>تعديل البيانات</span>
                        <img src="{{ asset('assets/icon/edit.svg') }}" class="float-end" width="25">
                    </button>
                    <button class="btn border w-75 p-3 rounded-4" data-bs-toggle="modal" data-bs-target="#editPasswordModal">
                        <span>تعديل كلمة المرور</span>
                        <img src="{{ asset('assets/icon/password.svg') }}" class="float-end" width="25">
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>
