<x-front-layout title="Speed Training">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">Speed 4 Training</h1>
                    <p>محاضرات وندوات تقدمها سبيد لعملائها في جميع أنحاء الجمهورية</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 150px;"></div>
        <div class="container">
            <div class="row justify-content-start justify-content-xl-center">
                <div class="col-lg-5">
                    <p class="main-title position-relative fw-bold mb-4 mx-auto">قادمة</p>
                    @foreach($next_training as $n_training)
                        <a href="{{ route('speed_training.show', ['id' => $n_training->id]) }}" class="card mb-4" style="text-decoration: none; color: #0b2242">
                            <img src="{{ asset('') . $n_training->images()->first()->url }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $n_training->getTranslation('title', app()->getLocale()) }}
                                </h6>
                                <hr class="border">
                                <div class="d-flex gap-4">
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ $n_training->location }}
                                        </small>
                                    </div>
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ \Carbon\Carbon::parse($n_training->date)->locale('ar')->isoFormat('LLLL') }}
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </a>
                    @endforeach
                </div>

                <div class="col-lg-5">
                    <p class="main-title position-relative fw-bold mb-4 mx-auto">منتهية</p>

                    @foreach($prev_training as $p_training)
                        <a  href="{{ route('speed_training.show', ['id' => $p_training->id]) }}" class="card mb-4" style="text-decoration: none; color: #0b2242">
                            <img src="{{ asset( $p_training->images()->first()->url ) }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $p_training->getTranslation('title', app()->getLocale()) }}
                                </h6>
                                <hr class="border">
                                <div class="d-flex gap-4">
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ $p_training->location }}
                                        </small>
                                    </div>
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small>
                                            {{ \Carbon\Carbon::parse($p_training->date)->locale('ar')->isoFormat('LLLL') }}
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
