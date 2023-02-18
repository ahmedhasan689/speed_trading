<x-front-layout title="{{ $room->getTranslation('title', app()->getLocale()) }}">
    <section class="my-5">
        <div class="container">
            <div class="d-flex flex-column flex-lg-row gap-5">
                <div class="w-100 mb-5">
                    <div class="ratio ratio-1x1">
                        <img src="{{ asset('') . $room->image }}" class=" rounded-4">
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
