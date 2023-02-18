@foreach($items as $item)
    <div class="col-xl-3 col-lg-4 col-md-6">
        <div class="card mb-3 position-relative">
            <div class="position-absolute" style="top:10px; right:10px">
                <img src="{{ asset('assets/icon/rating.svg') }}">
                <small>
                    {{ $item->rate ?? '0' }}
                </small>
            </div>
            <div class="text-center">
                <img src="{{ asset('/') . $item->images()->whereNotNull('url')->first()->url ?? asset('assets/images/camera.png') }}" class="card-img-top" alt="...">
            </div>
            <div class="card-body text-center">
                <img class="align-top" src="{{ asset('/') . $item->brand->image }}" width="70" alt="">
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
