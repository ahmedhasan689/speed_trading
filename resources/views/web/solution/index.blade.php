<x-front-layout title="Solutions">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title mt-5 mb-3 ms-5 position-relative">
                    <h1 class="fw-bold">حلول متكاملة</h1>
                    <p>تقدم سبيد حلول امنية متكاملة وفعّالة لمنشئات متعددة</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 130px; z-index: -1;"></div>
        <div class="container">
            <div class="row ">
                <div class="col-lg-3 col-md-4">
                    <div class="row">
                        @foreach($solutions as $solution)
                            <a href="#" data-id="{{ $solution->id }}" class="col-md-12 col-6 solutionId"
                               style="color: #0B2242; text-decoration: none">
                                <div class="card mb-3 @if($loop->first) text-bg-primary @endif">
                                    <img src="{{ $solution->images()->url ?? asset('assets/images/bank.jpg') }}" alt=""
                                         class="card-img-top" height="140">
                                    <div class="card-body">
                                        <h6 class="fw-bold">
                                            {{ $solution->getTranslation('title', app()->getLocale()) }}
                                        </h6>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-9 col-md-8 content-section">
                    @include('web.solution.content')
                </div>
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.solutionId', function(e) {
                e.preventDefault();

                var id = $(this).data('id');

                $('.card').removeClass('text-bg-primary')
                $(this).find('.card').addClass('text-bg-primary')

                $.ajax({
                    url: "{{ route('solution.getSolution') }}",
                    type: "GET",
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        $('.content-section').empty()
                        $('.content-section').append(`
                                <div>
                                    <div class="swiper solutionsSwiper">
                                        <div class="swiper-wrapper">

                                        </div>
                                    </div>
                                    <div class="swiper-scrollbar"></div>
                                </div>


                                <h4 class="fw-bold mt-5">
                                    `+ data.solution.title.en +`
                                </h4>
                                <hr class="border">
                                <div class="my-4">
                                    <h6 class="fw-bold">
                                        `+ data.separate_text[0] +`
                                    </h6>
                                    <p class="fs-6">
                                        `+ data.separate_text[1] +`
                                    </p>
                                </div>
                                <hr class="border">
                                <div class="item-card">

                                </div>
                                `
                        )

                        $('.swiper-wrapper').empty();
                        console.log( data.solution.images )
                        $.each(data.solution.images, function(key, value) {

                            $('.swiper-wrapper').append(`
                                <div class="swiper-slide">
                                    <div class="ratio ratio-21x9">
                                    <img src="{{ asset('/') }}`+ value.url +`" alt="" class="rounded-3">
                                </div>
                            `);
                        });

                        $('.item-card').empty();
                        $.each(data.solution.items, function(key, value) {
                            $('.item-card').append(`
                                <a href="/items/`+value.id+`" class="card mb-2" style="width: fit-content; flex-direction: row; color: #0B2242; text-decoration: none">
                                    <div class="card-body d-flex align-items-center" data-key="`+key+`">
                                        <div>
                                            <img src="`+ value.images[0].url +`" width="80" alt="">
                                        </div>
                                        <div>
                                            <img src="{{ asset('/') }}`+ value.brand.image +`" width="80" alt="">
                                            <p class="mb-0">
                                                `+ value.name.ar  + `
                                            </p>
                                            <strong>` + value.price + ` L.E</strong>
                                        </div>
                                    </div>
                                </a>
                                `);
                        });

                    },
                    error: function(data) {
                        console.log(data)
                    },
                })
            });
        </script>
    @endpush
</x-front-layout>
