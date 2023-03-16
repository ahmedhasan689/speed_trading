

<div class="swiper solutionsSwiper">
    <div class="swiper-wrapper">
        @foreach($single_solution->images as $image)
            <div class="swiper-slide">
                <div class="ratio ratio-21x9">
                    <img src="{{ $image->url ?? asset('assets/images/bank.jpg') }}" alt="" class="rounded-3">
                </div>
            </div>
        @endforeach

    </div>
    <div class="swiper-scrollbar"></div>
</div>

@php
    $text = $single_solution->getTranslation('content', app()->getLocale());
    $separate_text = explode(PHP_EOL, $text);
@endphp


<h4 class="fw-bold mt-5">
    {{ $single_solution->getTranslation('title', app()->getLocale()) }}
</h4>
<hr class="border">
<div class="my-4">
    <h6 class="fw-bold">
        {{ $separate_text[0] }}
    </h6>
    @if ( isset($separate_text[1]) )
        <p class="fs-6">
            {{ $separate_text[1] }}
        </p>
    @endif
</div>
<hr class="border">

@foreach($single_solution->items as $item)
    <div class="item-card">
        <a href="{{ route('item.show', ['id' => $item->id]) }}" class="card mb-2"
           style="width: fit-content; flex-direction: row; color: #0B2242; text-decoration: none">
            <div class="card-body d-flex align-items-center ">
                <div>
                    <img src="{{ $item->images()->first()->url ?? asset('assets/images/camera.png') }}" width="80"
                         alt="">
                </div>
                <div>
                    <img src="{{ asset('/') . $item->brand->image }}" width="80" alt="">
                    <p class="mb-0">
                        {{ $item->getTranslation('name', app()->getLocale()) }}
                    </p>
                    <strong>{{ $item->price }} L.E</strong>
                </div>
            </div>
        </a>
    </div>
@endforeach
