<x-front-layout title="Cart">
    <section>
        <div class="py-5" style="background: #0B2242;">
            <div class="container">
                <div class="page-title-2 my-5 ms-5 position-relative">
                    <h1 class="fw-bold">سلّة المشتريات</h1>
                    <p>تصفح المنتجات الأكثر مبيعاً من خلال موقع سبيد</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative cart-page">
        <div class="position-absolute top-0 start-0 end-0" style="height: 150px; background: #0B2242;"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-12 mb-4">
                    @if( $cart->count() > 0 )
                        <p class="main-title-2 text-white position-relative fw-bold mb-4 mx-auto">المنتجات ({{ $cart->count() }})</p>
                        <div class="card mb-4">
                            <div class="card-body">
                                @foreach($cart as $single_item)
                                    <div class="d-flex justify-content-between flex-column flex-md-row gap-3">
                                        <div class="d-flex gap-2">
                                            <button type="button" class="btn-close m-auto" aria-label="Close"></button>
                                            <img src="{{ $single_item->item->images->first()->url ?? asset('assets/images/camera.png') }}" width="100">
                                            <div>
                                                <img src="{{ asset('/') . $single_item->item->brand->image }}" height="10">
                                                <p class="fs-6 mb-0">
                                                    {{ $single_item->item->getTranslation('name', app()->getLocale()) }}
                                                </p>
                                                <span class="fw-bold">{{ $single_item->item->price }}L.E</span>
                                            </div>
                                        </div>
                                        <div class="d-flex gap-4 mt-auto" style="height: fit-content;">
                                            <div class="d-flex align-items-center gap-3">
                                                <button class="btn btn-light p-0 rounded-3">
                                                    <img src="{{ asset('assets/icon/chevron_right.svg') }}" width="30">
                                                </button>
                                                <span class="fw-bold">
                                                    {{ $single_item->quantity }}
                                                </span>
                                                <button class="btn btn-light p-0 rounded-3">
                                                    <img src="{{ asset('assets/icon/chevro_left.svg') }}" width="30">
                                                </button>
                                            </div>
                                            <span class="badge p-2 rounded-3 text-main-color">{{ $single_item->quantity * $single_item->item->price }}L.E</span>
                                        </div>
                                    </div>
                                    <hr class="border border-dark border-opacity-25">
                                @endforeach

                            </div>
                        </div>

                        <div class="text-center my-5">
                            <a href="{{ route('my_order.create') }}" class="btn btn-primary py-3 rounded-4" style="width: 250px;">
                                <span>طلب المنتجات</span>
                                <img src="{{ asset('assets/icon/arrow_next.svg') }}" class="float-end">
                            </a>
                        </div>
                    @else
                        <p class="main-title-2 text-white position-relative fw-bold mb-4 mx-auto">المنتجات (0)</p>
                    @endif
                </div>


                <div class="col-xl-6 col-lg-12 mb-4">
                    <p class="main-title-2 text-white position-relative fw-bold mb-4 mx-auto res-color">المفضلة</p>
                    <div class="card mb-4" style="background: #E6EDF7;">
                        <div class="card-body">
                            <p class="text-center my-3">لديك بعض المنتجات في المفضلة بإمكانك إضافتها للسلة</p>

                            <div class="swiper favoriteSwiper">
                                <div class="swiper-wrapper">
                                    @foreach( $favorites as $favorite )
                                        <div class="swiper-slide">
                                            <div class="card mb-3 position-relative">
                                                <div class="position-absolute" style="top:10px; right:10px">
                                                    <img src="{{ asset('assets/icon/rating.svg') }}">
                                                    <small>
                                                        {{ $favorite->favourable->rate }}
                                                    </small>
                                                </div>
                                                <div class="text-center p-3">
                                                    <img src="{{ $favorite->favourable->images->first()->url ?? asset('assets/images/camera.png') }}" class="card-img-top" alt="...">
                                                </div>
                                                <div class="card-body text-center">
                                                    <img class="align-top text-center" src="{{ asset('/') . $favorite->favourable->brand->image }}" width="20" style="width: 60px;" alt="">
                                                    <p class="card-text">
                                                        {{ $favorite->favourable->getTranslation('name', app()->getLocale()) }}
                                                    </p>
                                                    <div class="d-flex align-items-center justify-content-between">

                                                        <button class="btn-like active">
                                                            <img src="{{ asset('assets/icon/favorite-like.svg') }}" width="25" style="width: 25px;">
                                                        </button>

                                                        <span dir="ltr" class="fw-bold">
                                                            {{ $favorite->favourable->price }}
                                                            <sup>L.E</sup>
                                                        </span>
                                                        <form action="{{ route('cart.store', ['id' => $favorite->favourable->id]) }}" method="POST">
                                                            @csrf

                                                            <button class="btn btn-sm btn-outline-light">
                                                                <img src="{{ asset('assets/icon/cart_add.svg') }}">
                                                            </button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
