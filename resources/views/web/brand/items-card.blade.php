@foreach( $items as $item )
    <div class="col-lg-3 col-md-4 col-6 mb-3">
        <a href="{{ route('item.show', ['id' => $item->id]) }}" style="color: #0B2242; text-decoration: none" class="card mb-3 position-relative">
            <div class="position-absolute" style="top:10px; right:10px">
                <img src="{{ asset('assets/icon/rating.svg') }}">
                <small>
                    {{ $item->rate }}
                </small>
            </div>
            <div class="text-center offer-product">
                @if( isset($item->images->first()->url) )
                    <img src="{{ asset($item->images->first()->url)  }}" class="card-img-top" alt="...">
                @else
                    <img src="{{ asset('assets/images/camera.png') }}" class="card-img-top" alt="...">
                @endif
            </div>
            <div class="card-body text-center">
                <img class="align-top" src="{{ asset('/') . $brand->image }}" width="55" alt="">
                <p class="card-text">
                    {{ $item->getTranslation('name', app()->getLocale()) }}
                </p>
                <div class="d-flex align-items-center justify-content-between">
                    @auth
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
                    @else
                        <button onclick="event.preventDefault();" class="btn-like" data-bs-toggle="modal" data-bs-target="#loginModal">
                            <img src="{{ asset('assets/icon/favorite-like.svg') }}" width="25">
                        </button>
                        <span dir="ltr" class="fw-bold">
                            {{ $item->price }}
                            <sup>L.E</sup></span>
                        <button onclick="event.preventDefault();" href="#" class="btn btn-sm btn-outline-light" data-bs-toggle="modal" data-bs-target="#loginModal">
                            <img src="{{ asset('assets/icon/cart_add.svg') }}">
                        </button>
                    @endauth
                </div>
            </div>
        </a>
    </div>
@endforeach
