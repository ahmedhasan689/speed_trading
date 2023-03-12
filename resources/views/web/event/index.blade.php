<x-front-layout title="Events">
    <section dir="ltr">
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">فعاليات</h1>
                    <p>محاضرات وندوات تقدمها سبيد لعملائها في جميع أنحاء الجمهورية</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 150px;"></div>
        <div class="container">
            <div class="row justify-content-start justify-content-xl-center">
                <div class="col-lg-4">
                    <p class="main-title position-relative fw-bold mb-4 mx-auto">فعاليات قادمة</p>
                    @foreach($next_events as $n_event)
                        <a href="{{ route('event.show', ['id' => $n_event->id]) }}" class="card mb-4" style="text-decoration: none; color: #0b2242">
                            <img src="{{ $n_event->image }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $n_event->getTranslation('title', app()->getLocale()) }}
                                </h6>
                                <hr class="border">
                                <div class="d-flex gap-4">
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ $n_event->location }}
                                        </small>
                                    </div>
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ \Carbon\Carbon::parse($n_event->date)->locale('ar')->isoFormat('LLLL') }}
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </a>
                    @endforeach

                </div>

                <div class="col-lg-4">
                    <p class="main-title position-relative fw-bold mb-4 mx-auto">فعاليات منتهية</p>
                    @foreach($prev_events as $p_event)
                        <a href="{{ route('event.show', ['id' => $p_event->id]) }}" class="card mb-4" style="text-decoration: none; color: #0b2242">
                            <img src="{{ $p_event->image }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $p_event->getTranslation('title', app()->getLocale()) }}
                                </h6>
                                <hr class="border">
                                <div class="d-flex gap-4">
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ $p_event->location }}
                                        </small>
                                    </div>
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ \Carbon\Carbon::parse($p_event->date)->locale('ar')->isoFormat('LLLL') }}
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </a>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
