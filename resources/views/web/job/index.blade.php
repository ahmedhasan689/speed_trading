<x-front-layout title="Jobs">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title mt-5 mb-3 ms-5 position-relative">
                    <h1 class="fw-bold">وظائف</h1>
                    <p>نقدم كل ما هو ممكن لموظفينا، شركتنا تكبر وفريقنا يتوسع ويسعدنا رؤيتك معنا</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 130px;"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    @foreach($jobs as $job)
                        <a href="#" data-id="{{ $job->id }}" class="card @if($loop->first) text-bg-primary @endif mb-4 jobCard" style="text-decoration: none; color: #0b2242">
                            <div class="card-body">
                                <h6 class="card-title fw-bold">
                                    {{ $job->getTranslation('title', app()->getLocale()) }}
                                </h6>
                                <p class="card-text fs-6">
                                    {{ $job->getTranslation('notes', app()->getLocale()) }}
                                </p>
                                <hr class="border border-white">
                                <div class="d-flex gap-4">
                                    <div>
                                        <img src="{{ asset('assets/icon/services.svg') }}" alt="" width="23">
                                        <small class="ms-2">
                                            {{ $job->category->getTranslation('name', app()->getLocale()) }}
                                        </small>
                                    </div>
                                    <div>
                                        <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="23">
                                        <small class="ms-2">
                                            {{ $job->city->getTranslation('name', app()->getLocale()) }}
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </a>
                    @endforeach
                </div>

                <div class="col-md-8">
                    <div class="card mb-4">
                        <div class="card-body" id="formDetails">
                            <div class="d-flex gap-4">
                                <div class="w-100 fs-6">
                                    <h6 class="fw-bold mb-4">
                                        <img src="{{ asset('assets/icon/symbol_r.svg') }}" class="me-3" width="25">
                                        تفاصيل الوظيفة
                                    </h6>
                                    <p>
                                        {{ $jobs->first()->getTranslation( 'notes', app()->getLocale()) }}
                                    </p>
                                    <ul>
                                        @php
                                            $description = $jobs->first()->getTranslation( 'description', 'ar');
                                            $separate_description = explode('.', $description);
                                        @endphp
                                        @foreach( $separate_description as $description )
                                            <li>{{ $description }}</li>
                                        @endforeach
                                    </ul>
                                </div>

                                <div class="vr my-5 border d-none d-md-block"></div>

                                <div class="w-100">
                                    <h6 class="fw-bold mb-4">
                                        <img src="{{ asset('assets/icon/symbol_r.svg') }}" class="me-3" width="25">التقدم للوظيفة</h6>
                                    <form action="{{ route('job.store') }}" method="POST" class="px-md-4 px-1">
                                        @csrf

                                        <input type="hidden" value="{{ $jobs->first()->id }}" name="job_id">

                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/user.svg') }}" width="25">
                                            <input type="text" name="name" class="form-control rounded-3 ps-5 @error('name') is-invalid @enderror" id="floatingInput" placeholder="الاسم">
                                            <label class="ps-5" for="floatingInput">الاسم</label>
                                            @error('name')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/phone-2.svg') }}" width="25">
                                            <input type="text" name="phone" class="form-control rounded-3 ps-5 @error('phone') is-invalid @enderror" id="floatingInput" placeholder="رقم الهاتف">
                                            <label class="ps-5" for="floatingInput">رقم الهاتف</label>
                                            @error('phone')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/email.svg') }}" width="25">
                                            <input type="email" name="email" class="form-control rounded-3 ps-5 @error('email') is-invalid @enderror" id="floatingInput" placeholder="البريد الاكتروني">
                                            <label class="ps-5" for="floatingInput">البريد الالكتروني</label>
                                            @error('email')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="row g-2">
                                            <div class="col-md">
                                                <div class="form-floating mb-3">
                                                    <select name="city_id" class="form-select" id="floatingSelectGrid">
                                                        <option selected>المدينة</option>
                                                        @foreach( $cities as $city )
                                                            <option value="{{ $city->id }}">{{ $city->getTranslation('name', app()->getLocale()) }}</option>
                                                        @endforeach
                                                    </select>
                                                    <label for="floatingSelectGrid">المدينة</label>
                                                </div>
                                            </div>
                                            <div class="col-md">
                                                <div class="form-floating mb-3">
                                                    <input type="text" name="age" class="form-control rounded-3 ps-5 @error('age') is-invalid @enderror" id="floatingInput" placeholder="العمر">
                                                    <label class="ps-5" for="floatingInput">العمر</label>
                                                    @error('age')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>

                                        <div class="floating-file-input mb-3">
                                            <input type="file" name="cv" id="cvFile" class="@error('age') is-invalid @enderror">
                                            <label for="cvFile" class="w-100 rounded-3">
                                                <span>السيرة الذاتية</span>
                                                <img src="{{ asset('assets/icon/upload.svg') }}" class="float-end" width="25">
                                            </label>
                                            @error('cv')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="col">
                                            <button type="submit" class="btn btn-primary py-2 rounded-4 w-100">
                                                <span class="me-auto">ارسال</span>
                                                <img src="{{ asset('assets/icon/arrow_next.svg') }}" class="float-end" width="25">
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.jobCard', function(e) {
                e.preventDefault();

                $('.jobCard').removeClass('text-bg-primary')
                $(this).addClass('text-bg-primary')

                var id = $(this).data('id')

                $.ajax({
                    url:"{{ route('job.getJob') }}",
                    type: "GET",
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        $('#formDetails').empty();
                        $('#formDetails').append(`
                            <div class="d-flex gap-4">
                                <div class="w-100 fs-6">
                                    <h6 class="fw-bold mb-4">
                                        <img src="{{ asset('assets/icon/symbol_r.svg') }}" class="me-3" width="25">
                                        تفاصيل الوظيفة
                                    </h6>
                                    <p>
                                        `+ data.job.title.ar +`
                                    </p>
                                    <ul class="descriptions">
                                        <li></li>
                                    </ul>
                                </div>

                                <div class="vr my-5 border d-none d-md-block"></div>

                                <div class="w-100">
                                    <h6 class="fw-bold mb-4">
                                    <img src="{{ asset('assets/icon/symbol_r.svg') }}" class="me-3" width="25">التقدم للوظيفة</h6>
                                    <form action="{{ route('job.store') }}" method="POST" class="px-md-4 px-1">
                                        @csrf

                                        <input type="hidden" value="`+  data.job.id +`" name="job_id">
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/user.svg') }}" width="25">
                                            <input type="text" name="name" class="form-control rounded-3 ps-5 @error('name') is-invalid @enderror" id="floatingInput" placeholder="الاسم">
                                            <label class="ps-5" for="floatingInput">الاسم</label>
                                            @error('name')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/phone-2.svg') }}" width="25">
                                            <input type="text" name="phone" class="form-control rounded-3 ps-5 @error('phone') is-invalid @enderror" id="floatingInput" placeholder="رقم الهاتف">
                                            <label class="ps-5" for="floatingInput">رقم الهاتف</label>
                                            @error('phone')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-floating mb-3">
                                            <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                                 src="{{ asset('assets/icon/email.svg') }}" width="25">
                                            <input type="email" name="email" class="form-control rounded-3 ps-5 @error('email') is-invalid @enderror" id="floatingInput" placeholder="البريد الاكتروني">
                                            <label class="ps-5" for="floatingInput">البريد الالكتروني</label>
                                            @error('email')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="row g-2">
                                            <div class="col-md">
                                                <div class="form-floating mb-3">
                                                    <select name="city_id" class="form-select" id="floatingSelectGrid">
                                                        <option selected>المدينة</option>
                                                        @foreach( $cities as $city )
                                                            <option value="{{ $city->id }}">{{ $city->getTranslation('name', app()->getLocale()) }}</option>
                                                        @endforeach
                                                    </select>
                                                    <label for="floatingSelectGrid">المدينة</label>
                                                </div>
                                            </div>
                                            <div class="col-md">
                                                <div class="form-floating mb-3">
                                                    <input type="text" name="age" class="form-control rounded-3 ps-5 @error('age') is-invalid @enderror" id="floatingInput" placeholder="العمر">
                                                    <label class="ps-5" for="floatingInput">العمر</label>
                                                    @error('age')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>

                                        <div class="floating-file-input mb-3">
                                            <input type="file" id="cvFile" class="@error('cv') is-invalid @enderror">
                                            <label for="cvFile" name="cv" class="w-100 rounded-3">
                                                <span>السيرة الذاتية</span>
                                                <img src="{{ asset('assets/icon/upload.svg') }}" class="float-end" width="25">
                                                @error('cv')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </label>
                                        </div>

                                        <div class="col">
                                            <button type="submit" class="btn btn-primary py-2 rounded-4 w-100">
                                                <span class="me-auto">ارسال</span>
                                                <img src="{{ asset('assets/icon/arrow_next.svg') }}" class="float-end" width="25">
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        `);

                        $('.descriptions').empty();
                        $.each(data.description, function(key, value){
                            $('.descriptions').append(`
                                <i> `+ value +` </i><br>
                            `)
                        });
                    },
                    error: function(data) {
                        console.log(data)
                    },
                })
            })
        </script>
    @endpush
</x-front-layout>
