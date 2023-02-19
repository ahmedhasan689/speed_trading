<x-front-layout title="About Company">
    <section>
        <div class="py-5" style="background: #0B2242;">
            <div class="container">
                <div class="page-title-2 my-5 ms-5 position-relative">
                    <h1 class="fw-bold">سبيد تريدينج</h1>
                    <p>سبيد فور تريدنج هي شركة رائدة في أنظمة المراقبة والأمن بالكاميرات</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative cart-page">
        <div class="position-absolute top-0 start-0 end-0" style="height: 150px; background: #0B2242;"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-10">
                    <div class="card rounded-5 py-4">
                        <div class="card-body text-center">
                            <img src="{{ asset('assets/images/logo.png') }}" width="230" alt="logo">
                            <p class="my-5">
                                {!! $text->getTranslation('content', 'ar')  !!}
                            </p>
                            <div class="d-flex justify-content-center gap-4">
                                <a href="{{ $options->where('key', 'youtube_url')->first()->value }}" class="btn btn-light btn-social">
                                    <img src="{{ asset('assets/icon/social_yoututbe.svg') }}">
                                </a>
                                <a href="{{ $options->where('key', 'linkedin_url')->first()->value }}" class="btn btn-light btn-social">
                                    <img src="{{ asset('assets/icon/social_linkedin.svg') }}">
                                </a>
                                <a href="{{ $options->where('key', 'twitter_url')->first()->value }}" class="btn btn-light btn-social">
                                    <img src="{{ asset('assets/icon/social_twitter.svg') }}">
                                </a>
                                <a href="{{ $options->where('key', 'facebook_url')->first()->value }}" class="btn btn-light btn-social">
                                    <img src="{{ asset('assets/icon/social_facebook.svg') }}">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
