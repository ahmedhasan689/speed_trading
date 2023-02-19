<div class="col-lg-4 mb-5">
    <div class="swiper mySwiper2 mb-4">
        <div class="swiper-wrapper">
            @foreach($item->images as $image)
                <div class="swiper-slide border rounded-3 p-2">
                    <img src="{{ asset('/') . $image->url ?? asset('assets/images/camera.png') }}" />
                </div>
            @endforeach
        </div>
    </div>

    <div thumbsSlider="" class="swiper mySwiper w-75">
        <div class="swiper-wrapper">
            @foreach($item->images as $image)
                <div class="swiper-slide border rounded-3 p-2">
                    <img src="{{ asset('/') . $image->url ?? asset('assets/images/camera.png')}}" />
                </div>
            @endforeach
        </div>
    </div>
</div>


<div class="col-lg-8">
    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row pb-3 border-bottom">
        <div>
            <img src="{{ asset('/') . $item->brand->image }}" alt="" class="mb-3" width="150">
            <p>
                {{ $item->getTranslation('name', app()->getLocale()) }}
            </p>
        </div>
        <div class="d-flex align-items-center gap-4">
            <div>
                <p class="mb-0 fw-bold">
                    {{ $item->price }} L.E</p>
            </div>
            @auth
                <form action="#" method="POST">
                    @csrf
                    <button data-id="{{ $item->id }}" class="btn-like @if(in_array($item->id, $favorites)) active @endif">
                        <img src="{{ asset('assets/icon/favorite-like.svg') }}" width="25">
                    </button>
                </form>
            @else
                <button onclick="event.preventDefault();" class="btn-like" data-bs-toggle="modal" data-bs-target="#loginModal">
                    <img src="{{ asset('assets/icon/favorite-like.svg') }}" width="25">
                </button>
            @endauth
            <button class="btn btn-light rounded-3">
                <img src="{{ asset('assets/icon/share.svg') }}" width="25">
            </button>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-lg-6 mb-5">
            <h6 class="fw-bold mb-4">
                <img src="{{ asset('assets/icon/symbol_r.svg') }}" class="me-3" width="25">
                المواصفات
            </h6>
            <div>
                <p class="fs-6">
                    'Here Details'
                </p>
                {!! $item->getTranslation('details', app()->getLocale()) !!}
                <div class="mx-auto mx-md-0" style="width: 250px;">

                    @auth
                        <form action="{{ route('cart.store', ['id' => $item->id]) }}" method="POST">
                            @csrf

                            <button class="btn btn-primary rounded-3 py-2 px-3 mb-3 w-100">
                                <span>إضافة للسلة</span>
                                <img src="{{ asset('assets/icon/cart_add-.svg') }}" class="float-end" width="25">
                            </button>
                        </form>
                    @endauth

                    <a href="{{ route('item.compare', ['id' => $item->id]) }}" class="btn btn-light rounded-3 py-2 px-3 mb-3 w-100">
                        <span>أضف للمقارنة</span>
                        <img src="{{ asset('assets/icon/compare.svg') }}" class="float-end" width="25">
                    </a>

                    @if( $item->user_manual )
                        <form action="{{ route('item.download') }}" method="POST">
                            @csrf
                            <input type="hidden" name="file" value="{{ $item->user_manual }}">
                            <button type="submit" class="btn btn-white border rounded-3 py-2 px-3 mb-3 w-100">
                                <span>تحميل دليل الاستخدام</span>
                                <img src="{{ asset('assets/icon/download.svg') }}" class="float-end" width="25">
                            </button>
                        </form>
                    @endif
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h6 class="fw-bold mb-0">
                    <img src="{{ asset('assets/icon/symbol_r.svg') }}" class="me-3" width="25">
                    التقييمات ({{ $item->rates->count() ?? '0' }})
                </h6>
                <div class="d-flex gap-2 align-items-center">
                    <span>
                        {{ $item->rate }}
                    </span>
                    <img src="{{ asset('assets/icon/rating.svg') }}" width="25">
                </div>
            </div>
            <div>
                @foreach( $item->rates as $rate )
                    <div class="border-bottom mb-3">
                        <div class="d-flex justify-content-between">
                            <h6 class="fw-bold mb-0">
                                {{ $rate->user->name }}
                            </h6>
                            <p class="text-muted fs-6 mb-0">
                                {{ \Carbon\Carbon::parse($rate->created_at, 'YYYY-m-d') }}
                            </p>
                        </div>
                        <div class="d-flex my-2">
                            @for( $i = 1; $i <= $rate->rate ; $i++ )
                                <img src="{{ asset('assets/icon/star.svg') }}" width="20">
                            @endfor
                        </div>
                        <p class="fs-6">
                            {{ $rate->comment }}
                        </p>
                    </div>
                @endforeach
            </div>

            <button class="btn btn-light rounded-4 p-3 mb-3 w-100">
                <span>عرض المزيد</span>
                <img src="{{ asset('assets/icon/star.svg') }}" class="float-end" width="25">
            </button>
        </div>
    </div>
</div>
