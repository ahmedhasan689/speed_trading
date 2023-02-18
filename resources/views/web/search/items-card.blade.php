@foreach($items as $item)
    <div class="col-lg-3 col-md-4 col-6 mb-3">
        <div class="card mb-3 position-relative">
            <div class="position-absolute" style="top:10px; right:10px">
                <img src="{{ asset('assets/icon/rating.svg') }}">
                <small>
                    {{ $item->rate ?? 0 }}
                </small>
            </div>
            <div class="text-center offer-product">
                <img src="{{ $item->images->first()->url ?? null }}" class="card-img-top" alt="...">
            </div>
            <div class="card-body text-center">
                <img class="align-top" src="{{ $item->brand->image ?? null }}" width="55" alt="">
                <p class="card-text">
                    {{ $item->getTranslation('name', app()->getLocale()) }}
                </p>
                <div class="d-flex align-items-center justify-content-between">
                    <form action="#" method="POST">
                        @csrf
                        <button data-id="{{ $item->id }}" class="btn-like @if(in_array($item->id, $favorites)) active @endif">
                            <img src="{{ asset('assets/icon/favorite-like.svg') }}" width="25">
                        </button>
                    </form>
                    <span dir="ltr" class="fw-bold">{{ $item->price }} <sup>L.E</sup></span>
                    <form action="{{ route('cart.store', ['id' => $item->id]) }}" method="POST">
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
