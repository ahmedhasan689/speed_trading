<div class="row justify-content-start justify-content-xl-center">
    @if( $addresses )
        @foreach( $addresses as $address )
            <div class="col-lg-5">
                <div class="card mb-4">
                    <img src="{{ asset('assets/images/map.jpg') }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <h6 class="card-title fw-bold">
                                {{ $address->name }}
                            </h6>
                            <small class="text-muted">
                                {{ $address->city->getTranslation('name', app()->getLocale()) }}
                            </small>
                        </div>
                        <p class="card-text fs-6">
                            {{ $address->address }}
                        </p>
                        <div class="d-flex gap-4 justify-content-end">
                            <button class="btn border editModal" style="width: 150px;" data-bs-toggle="modal" data-id="{{ $address->id }}" data-bs-target="#addressModalEdit-{{ $address->id }}">
                                <span>تعديل</span>
                                <img src="{{ asset('assets/icon/edit.svg') }}" class="float-end" width="23">
                            </button>
                            <button class="btn border deleteBtn" data-id="{{ $address->id }}" style="width: 150px;">
                                <span>حذف</span>
                                <img src="{{ asset('assets/icon/close.svg') }}" class="float-end" width="23">
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="addressModalEdit-{{ $address->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content border-0 gap-4 bg-transparent">
                        <div class="modal-body bg-white rounded-4 py-5">
                            <p class="main-title position-relative fw-bold mx-auto mb-4">العنوان</p>
                            <form action="{{ route('address.update') }}" method="POST" class="px-md-4 px-1">
                                @csrf

                                <input type="hidden" value="{{ $address->id }}" class="address-id">

                                <div class="text-danger text-center my-4 login-errors"></div>

                                <div class="text-danger text-center my-4 login-errors"></div>
                                <div class="form-floating mb-3">
                                    <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                         src="{{ asset('assets/icon/place.svg') }}" width="25">
                                    <input type="text" value="{{ $address->name }}" name="name" class="form-control rounded-3 ps-5 addressNameEdit" id="addressNameEdit-{{ $address->id }}" placeholder="اسم العنوان">
                                    <label class="ps-5" for="addressNameEdit">اسم العنوان</label>
                                </div>
                                <div class="row g-2">
                                    <div class="col-md">
                                        <div class="form-floating mb-3">
                                            <select class="form-select addressGovernorate" data-type="edit" id="addressGovernorate" name="governorate_id">
                                                <option selected>المحافظة</option>
                                                @foreach( $governorates as $governorate )
                                                    <option value="{{ $governorate->id }}" @if( $governorate->id == $address->city->governorate->id) selected @endif>
                                                        {{ $governorate->getTranslation('name', app()->getLocale()) }}
                                                    </option>
                                                @endforeach

                                            </select>
                                            <label for="floatingSelectGrid">المحافظة</label>
                                        </div>
                                    </div>

                                    <div class="col-md">
                                        <div class="form-floating mb-3">
                                            <select class="form-select addressCityEdit-{{ $address->id }}" id="addressCity" name="city_id">
                                                <option selected>المدينة</option>
                                                @foreach( $cities as $city )
                                                    <option value="{{ $city->id }}" @if( $address->city->id == $city->id) selected @endif>
                                                        {{ $city->getTranslation('name', app()->getLocale()) }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <label for="floatingSelectGrid">المدينة</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" name="address" value="{{ $address->address }}" class="form-control rounded-3 ps-5 addressEdit" id="addressEdit-{{ $address->id }}" placeholder="تفاصيل العنوان">
                                    <label class="ps-5" for="addressEdit">تفاصيل العنوان</label>
                                </div>

                                <div class="row g-2">
                                    <div class="col-md">
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/gps.svg') }}" width="25">
                                            <input type="text" class="form-control rounded-3 ps-5" id="lat-edit" value="{{ $address->lat }}" placeholder="تحديد الموقع" style="pointer-events: none">
                                            <label class="ps-5" for="lat">Latitude</label>
                                        </div>
                                    </div>

                                    <div class="col-md">
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/gps.svg') }}" width="25">
                                            <input type="text" class="form-control rounded-3 ps-5" id="lng-edit" value="{{ $address->lng }}" placeholder="تحديد الموقع" style="pointer-events: none">
                                            <label class="ps-5" for="lng">Longitude</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-check mb-3">
                                    <input class="form-check-input" name="is_primary" type="checkbox" value="" id="addressPrimaryEdit-{{ $address->id }}" @if( $address->is_primary == 1 ) checked @endif>
                                    <label class="form-check-label" for="addressPrimary">
                                        استخدام كعنوان أساسي
                                    </label>
                                </div>
                                <div class="col">
                                    <button type="submit" class="btn btn-light py-2 rounded-4 w-100 addressBtnEdit">
                                        <span class="me-auto">تأكيد</span>
                                        <img src="{{ asset('assets/icon/check-2.svg') }}" class="float-end" width="25">
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    @endif
</div>
<div class="text-center my-5">
    <button class="btn btn-primary py-2 rounded-3" style="width: 200px;" data-bs-toggle="modal" data-bs-target="#addressModal">
        <span>إضافة عنوان جديد</span>
        <img src="{{ asset('assets/icon/join.svg') }}" class="float-end" width="23">
    </button>
</div>
