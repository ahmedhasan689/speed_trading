<div class="col-lg-4">
    <div class="card mb-4">
        <div class="card-header border-dark border-opacity-10 bg-transparent py-4">
            <p class="main-title position-relative fw-bold mb-0 mx-auto">تفاصيل الطلب</p>
        </div>
        <div class="card-body">
            <div class="pb-3 mb-3 border-bottom border-dark border-opacity-10">
                @foreach( $cart as $single_cart )
                    <div class="d-flex justify-content-between text-color mb-2">
                        <p class="mb-0 fs-6">
                            {{ $single_cart->item->getTranslation('name', app()->getLocale()) }}
                        </p>
                        <div class="d-flex gap-4">
                            <span>{{ $single_cart->quantity }}</span>
                            <small class="fw-bold" dir="ltr">{{ $single_cart->item->price * $single_cart->quantity }}
                                <sup>L.E</sup>
                            </small>
                        </div>
                    </div>
                @endforeach

            </div>
            <div>
                <div class="d-flex justify-content-between text-color mb-2">
                    <small>الضرائب</small>
                    <small class="fw-bold" dir="ltr">
                        2
                        <sup>L.E</sup>
                    </small>
                </div>
                <div class="d-flex justify-content-between text-color mb-2">
                    <small>التوصيل</small>
                    <small class="fw-bold" dir="ltr">
                        2
                        <sup>L.E</sup>
                    </small>
                </div>
                <div class="d-flex justify-content-between text-color mb-2">
                    <small>المجموع</small>
                    <small class="fw-bold" dir="ltr">
                        {{ $one_cart->price }}
                        <sup>L.E</sup>
                    </small>
                </div>
                <hr class="border">
                <a class="px-3 btn w-100 d-flex text-start justify-content-between" data-bs-toggle="modal" data-bs-target="#discountCodeModal">
                    <div>
                        <small class="d-block">كود الخصم</small>
                        <small class="fw-bold text-muted">أدخل كود الخصم</small>
                    </div>
                    <img src="{{ asset('assets/icon/arrow_next-2.svg') }}" width="20">
                </a>
            </div>
        </div>
        <div class="card-footer border-dark border-opacity-10 py-3 d-flex justify-content-between">
            <p class="fw-bold mb-0">الإجمالي</p>
            <p class="fw-bold mb-0 text-main-color">{{ $one_cart->final_price }} L.E</p>
        </div>
    </div>
</div>

<div class="col-lg-4">
    <div class="card mb-4">
        <div class="card-header border-dark border-opacity-10 bg-transparent py-4">
            <p class="main-title position-relative fw-bold mb-0 mx-auto">بيانات التسليم</p>
        </div>
        <div class="card-body">
            <div class="px-3 text-color">
                <small class="d-block">الاسم</small>
                <small class="fw-bold">{{ auth()->user()->name }}</small>
            </div>
            <hr class="border">
            <div class="px-3 text-color">
                <small class="d-block">رقم الهاتف</small>
                <small class="fw-bold">{{ auth()->user()->mobile }}</small>
            </div>
            <hr class="border">
            @if( auth()->user()->addresses()->where('is_primary', 1)->first() )
                <a class="px-3 btn w-100 d-flex text-start justify-content-between">
                    <div>
                        <small class="d-block">العنوان</small>
                        <small class="fw-bold text-muted">
                            {{ auth()->user()->addresses()->where('is_primary', 1)->first()->address }}
                        </small>
                    </div>
                </a>
            @else
                <a class="px-3 btn w-100 d-flex text-start justify-content-between" data-bs-toggle="modal" data-bs-target="#addressModal">
                    <div>
                        <small class="d-block">العنوان</small>
                        <small class="fw-bold text-muted">الشارع الجانبي المتفرع من الشارع الرئيسي</small><br>
                        <small class="text-danger">الرجاء إضافة عنوان !</small>
                    </div>
                    <img src="{{ asset('assets/icon/arrow_next-2.svg') }}" width="20">
                </a>
            @endif
            <hr class="border">
            <a class="px-3 btn w-100 d-flex text-start justify-content-between" data-bs-toggle="modal" data-bs-target="#paymentModal">
                <div>
                    <small class="d-block">طريقة الدفع</small>
                    <small class="fw-bold text-muted paymentResult">الدفع عند الاستلام</small>
                </div>
                <img src="{{ asset('assets/icon/arrow_next-2.svg') }}" width="20">
            </a>
        </div>
    </div>
</div>

<div class="mt-5 text-center">
    <span class="d-block mb-3">بتأكيد الطلب مع سبيد انت توافق تلقائياً على
        <a href="{{ route('page.terms') }}" class="text-main-color fw-bold text-decoration-none">الشروط والاحكام</a>
    </span>

    <form action="{{ route('my_order.store') }}" method="POST">
        @csrf

        <input type="hidden" value="" name="type" id="type">
        <button class="btn btn-primary py-2 rounded-4" style="width: 200px;">
            <span>تأكيد الطلب</span>
            <img src="{{ asset('assets/icon/arrow_next.svg') }}" class="float-end">
        </button>
    </form>
</div>
