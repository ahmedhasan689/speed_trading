@foreach( $favorites as $item )
    <div class="col-xl-2 col-lg-3 col-md-4 col-6">
        <div class="card mb-3 position-relative">
            <div class="position-absolute" style="top:10px; right:10px">
                <img src="{{ asset('assets/icon/rating.svg') }}">
                <small>
                    {{ round($item->favourable->rate, 1) }}
                </small>
            </div>
            <div class="text-center offer-product">
                <img src="{{ $item->favourable->images->first()->url ?? null }}" class="card-img-top" alt="...">
            </div>
            <div class="card-body text-center">
                <img class="align-top" src="{{ $item->favourable->brand->image }}" width="50" alt="">
                <p class="card-text fs-6">
                    {{ $item->favourable->getTranslation('name', app()->getLocale()) }}
                </p>
                <div class="d-flex align-items-center justify-content-between">
                    <form action="#" method="POST">
                        @csrf
                        <button data-id="{{ $item->favourable->id }}" class="btn-like active">
                            <img src="{{ asset('assets/icon/favorite-like.svg') }}" width="25">
                        </button>
                    </form>
                    <span dir="ltr" class="fw-bold">
                                        {{ $item->favourable->price }}
                                        <sup>L.E</sup>
                                    </span>
                    <button class="btn btn-sm btn-outline-light">
                        <img src="{{ asset('assets/icon/cart_add.svg') }}">
                    </button>
                </div>
            </div>
        </div>
    </div>
@endforeach
