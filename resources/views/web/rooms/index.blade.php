<x-front-layout title="Rooms">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title mt-5 mb-3 ms-5 position-relative">
                    <h1 class="fw-bold">غرف</h1>
                    <p>تقدم سبيد حلول امنية متكاملة وفعّالة لمنشئات متعددة</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 130px;"></div>
        <div class="container">
            <div class="row">
                @foreach($rooms as $room)
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <a href="{{ route('room.show', ['id' => $room->id]) }}" class="card mb-4" style="text-decoration: none; color: #0b2242">
                            <img src="{{ asset('') . $room->image }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $room->getTranslation('title', app()->getLocale()) }}
                                </h6>
                            </div>
                        </a>
                    </div>
                @endforeach

            </div>
        </div>
    </section>
</x-front-layout>
