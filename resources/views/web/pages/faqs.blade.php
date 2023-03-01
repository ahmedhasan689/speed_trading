<x-front-layout title="Faqs Page">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title mt-5 mb-3 ms-5 position-relative">
                    <h1 class="fw-bold">الأسئلة الشائعة</h1>
                    <p>أكثر الأسئلة التي تردنا من المستخدمين عبر المنصة</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 130px; z-index: -1;"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card p-4 text-light" style="background: #0B2242;">
                        <div class="border-start border-light border-5 ps-3">
                            <h6 class="fw-bold">لم تجد إجابة لسؤالك؟</h6>
                            <small>تواصل مع فريق الدعم الفنّي الخاص بسبيد</small>
                        </div>
                        @auth
                            <a href="{{ route('page.support') }}" class="btn btn-light mt-4 py-2 rounded-3">
                                <span>الدعم الفني</span>
                                <img src="{{ asset('assets/icon/technical_support.svg') }}" class="float-end" width="25">
                            </a>
                        @else
                            <a href="#" class="btn btn-light mt-4 py-2 rounded-3" data-bs-toggle="modal" data-bs-target="#loginModal">
                                <span>الدعم الفني</span>
                                <img src="{{ asset('assets/icon/technical_support.svg') }}" class="float-end" width="25">
                            </a>
                        @endauth

                    </div>
                </div>
                <div class="col-lg-8">
                    @foreach( $texts as $text )
                        <div class="mb-5">
                            <h6 class="faq-title">
                                {{ $text->question }}
                            </h6>
                            <p class="fs-6">
                                {{ $text->answer }}
                            </p>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    </section>
</x-front-layout>
