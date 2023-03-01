<div class="col-xl-3 col-lg-6">
    <div class="card mb-4">
        <div class="card-header border-dark border-opacity-10 bg-transparent py-3">
            <p class="main-title position-relative fw-bold mb-0 mx-auto">التحديثات</p>
        </div>
        <div class="card-body">
            <div class="d-flex gap-4 align-items-center mb-3">
                <div>
                    <img src="{{ asset('assets/icon/start.svg') }}" width="25" alt="">
                </div>
                <div class="text-color">
                    <p class="fw-bold mb-0">بدء الطلب</p>
                    <small>
                        {{ \Carbon\Carbon::parse($order->created_at)->locale('ar')->isoFormat('LLLL') ?? 'ليس بعد' }}
                    </small>
                </div>
            </div>
            <div class="d-flex gap-4 align-items-center mb-3">
                <div>
                    <img src="{{ asset('assets/icon/approval.svg') }}" width="25" alt="">
                </div>
                <div class="text-color">
                    <p class="fw-bold mb-0">تأكيد الطلب</p>
                    <small>
                        @if($order->confirmed_at)
                            {{ \Carbon\Carbon::parse($order->confirmed_at)->locale('ar')->isoFormat('LLLL') ?? 'ليس بعد' }}
                        @else
                            {{ 'ليس بعد' }}
                        @endif
                    </small>
                </div>
            </div>
            <div class="d-flex gap-4 align-items-center mb-3">
                <div>
                    <img src="{{ asset('assets/icon/shipping.svg') }}" width="25" alt="">
                </div>
                <div class="text-color">
                    <p class="fw-bold mb-0">الشحن</p>
                    <small>
                        @if($order->shipping_at)
                            {{ \Carbon\Carbon::parse($order->shipping_at)->locale('ar')->isoFormat('LLLL') ?? 'ليس بعد' }}
                        @else
                            {{ 'ليس بعد' }}
                        @endif
                    </small>
                </div>
            </div>
            <div class="d-flex gap-4 align-items-center mb-3">
                <div>
                    <img src="{{ asset('assets/icon/check.svg') }}" width="25" alt="">
                </div>
                <div class="text-color">
                    <p class="fw-bold mb-0">استلام الطلب</p>
                    <small>
                        @if($order->delivered_at)
                            {{ \Carbon\Carbon::parse($order->delivered_at)->locale('ar')->isoFormat('LLLL') }}
                        @else
                            {{ 'ليس بعد' }}
                        @endif
                    </small>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-xl-3 col-lg-6">
    <div class="card mb-4">
        <div class="card-header border-dark border-opacity-10 bg-transparent py-3">
            <p class="main-title position-relative fw-bold mb-0 mx-auto">تفاصيل الطلب</p>
        </div>
        <div class="card-body">
            <div class="pb-3 mb-3 border-bottom border-dark border-opacity-10">
                @foreach($order->details as $detail)
                    <div class="d-flex justify-content-between text-color mb-2">
                        <p class="mb-0 fs-6">
                            {{ $detail->item->getTranslation('name', app()->getLocale()) }}
                        </p>
                        <div class="d-flex gap-4">
                                            <span>
                                                {{ $detail->quantity }}
                                            </span>
                            <small class="fw-bold" dir="ltr">
                                {{ $detail->quantity * $detail->item->price }}
                                <sup>L.E</sup>
                            </small>
                        </div>
                    </div>

                @endforeach

                @if( $order->delivered_at )
                    @foreach($order->details as $detail)
                        @if( !\App\Models\Rate::where('item_id', $detail->item->id)->where('user_id', auth()->id())->exists() )
                            <button class="btn btn-light rounded-4 w-100 mt-3 py-2 rateBtn" data-bs-toggle="modal"
                                    data-bs-target="#evalModal-{{ $detail->item->id }}" data-id="{{ $detail->item->id }}">
                                <span>تقييم المنتج {{ $detail->item->getTranslation('name', app()->getLocale()) }}</span>
                                <img class="float-end" src="{{ asset('assets/icon/star.svg') }}" width="25">
                            </button>
                        @endif

                        <div class="modal fade" id="evalModal-{{ $detail->item->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content border-0 gap-4 bg-transparent">
                                    <div class="modal-body bg-white rounded-4 p-5">
                                        <p class="main-title position-relative fw-bold mx-auto mb-4">تقييم المنتجات</p>
                                        <div class="mb-4">
                                            <div class="d-flex gap-4">
                                                <img src="{{ asset('/') . $detail->item->images()->first()->url }}" alt="" width="120">
                                                <div>
                                                    <img src="{{ asset('/') . $detail->item->brand->image }}" width="70">
                                                    <p class="mb-0 fs-6">
                                                        {{ $detail->item->getTranslation('name', app()->getLocale()) }}
                                                    </p>
                                                    <strong>{{ $detail->item->price }} L.E</strong>
                                                    <div class="rating d-flex justify-content-center flex-row-reverse" data-id="{{ $detail->item->id }}">
                                                        @for($i = 5; $i >= 1; $i--)
                                                            <input type="radio" name="rating" data-loop="{{ $i }}" class="rating_star" value="{{ $i }}" id="{{ $i }}">
                                                            <label for="{{ $i }}">☆</label>
                                                        @endfor
                                                    </div>
                                                </div>
                                            </div>
                                            <input class="form-control my-3 rounded-3 commentText-{{ $detail->item->id }}" name="comment" type="text" placeholder="اكتب رأيك...">
                                            <button class="btn btn-light w-100 px-3 py-2 rounded-3 rateSubmitBtn" data-id="{{ $detail->item->id }}" >
                                                <span>تأكيد</span>
                                                <img src="{{ asset('assets/icon/check-2.svg') }}" class="float-end" width="25">
                                            </button>
                                        </div>
                                        <hr class="border">
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>

            <div>
                <div class="d-flex justify-content-between text-color mb-2">
                    <small>الضرائب</small>
                    <small class="fw-bold" dir="ltr">2,516 <sup>L.E</sup></small>
                </div>
                <div class="d-flex justify-content-between text-color mb-2">
                    <small>التوصيل</small>
                    <small class="fw-bold" dir="ltr">2,516 <sup>L.E</sup></small>
                </div>
                <div class="d-flex justify-content-between text-color">
                    <small>كود الخصم</small>
                    <small class="fw-bold text-muted">لا يوجد</small>
                </div>
                <div class="d-flex justify-content-between text-color mb-2">
                    <small>المجموع</small>
                    <small class="fw-bold" dir="ltr">
                        {{ $order->price }}
                        <sup>L.E</sup>
                    </small>
                </div>
            </div>
        </div>
        <div class="card-footer border-dark border-opacity-10 py-3 d-flex justify-content-between">
            <p class="fw-bold mb-0">الإجمالي</p>
            <p class="fw-bold mb-0 text-main-color">{{ $order->price + $order->shipping }} L.E</p>
        </div>
    </div>

    @if( !$order->delivered_at )
        <button class="btn btn-light rounded-4 w-100 mt-3 py-2" data-bs-toggle="modal"
                data-bs-target="#cancelModal">
            <span>الغاء الطلب</span>
            <img class="float-end" src="{{ asset('assets/icon/close.svg') }}" width="25">
        </button>
    @endif
</div>

<div class="col-xl-3 col-lg-6">
    <div class="card mb-4">
        <div class="card-header border-dark border-opacity-10 bg-transparent py-3">
            <p class="main-title position-relative fw-bold mb-0 mx-auto">بيانات التسليم</p>
        </div>
        <div class="card-body p-0">
            <div class="px-3 py-2 border-bottom border-dark border-opacity-10 text-color">
                <small class="d-block">الاسم</small>
                <small class="fw-bold">
                    {{ $order->user->name }}
                </small>
            </div>
            <div class="px-3 py-2 border-bottom border-dark border-opacity-10 text-color">
                <small class="d-block">رقم الهاتف</small>
                <small class="fw-bold">
                    {{ $order->user->mobile }}
                </small>
            </div>
            <div class="px-3 py-2 border-bottom border-dark border-opacity-10 text-color">
                <small class="d-block">العنوان</small>
                <small class="fw-bold">
                    {{ $order->address->address }}
                </small>
            </div>
            <div class="px-3 py-2 text-color">
                <small class="d-block">طريقة الدفع</small>
                <small class="fw-bold">
                    @if( $order->payment_method == 'cash')
                        {{ 'الدفع عند الاستلام' }}
                    @else
                        {{ 'من خلال بطاقة ائتمانية' }}
                    @endif
                </small>
            </div>
        </div>
    </div>
</div>
