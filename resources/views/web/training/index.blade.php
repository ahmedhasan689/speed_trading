<x-front-layout title="Training">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title mt-5 mb-3 ms-5 position-relative">
                    <h1 class="fw-bold">تدريب</h1>
                    <p>تقدم سبيد حلول امنية متكاملة وفعّالة لمنشئات متعددة</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 150px;"></div>
        <div class="container">
            <div class="row">
                @foreach($trainings as $training)
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <a href="{{ route('training.show', ['id' => $training->id]) }}" class="card mb-4" style="text-decoration: none; color: #0b2242">
                            @if( $training->images->first()->type == 'image' )
                                <img src="{{ asset('') . $training->images->first()->url }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                            @elseif( $training->images->first()->type == 'video' )
                                <iframe src="{{ $training->images->first()->url }}" class="rounded-4" title="YouTube video" allowfullscreen></iframe>
                            @endif
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $training->getTranslation('title', app()->getLocale()) }}
                                </h6>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
</x-front-layout>
