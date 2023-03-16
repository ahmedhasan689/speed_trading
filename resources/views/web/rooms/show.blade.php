<x-front-layout title="{{ $room->getTranslation('title', app()->getLocale()) }}">
    <section class="my-5">
        <div class="container">
            <div class="d-flex flex-column flex-lg-row gap-5">
                <div class="swiper-container mb-5 m-auto">
                    <div class="swiper mySwiper2">
                        <div class="swiper-wrapper">
                            @foreach( $room->images as $s_image )
                                <div class="swiper-slide">
                                    <img src="{{ asset('') . $s_image->url }}" />
                                </div>
                            @endforeach

                        </div>
                    </div>
                    <div thumbsSlider="" class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            @foreach( $room->images as $d_image )
                                <div class="swiper-slide">
                                    <img src="{{ asset('') . $d_image->url }}"/>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="w-100">
                    <h5 class="fw-bold">
                        {{ $room->getTranslation('title', app()->getLocale()) }}
                    </h5>
                    <hr class="border">
                    <p>
                        {{ $room->getTranslation('content', app()->getLocale()) }}
                    </p>
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
