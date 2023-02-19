<x-front-layout title="Search">
    <section class="mt-3 mt-lg-5">
        <div class="container">
            <div class="rounded-4 py-5 bg-light d-flex align-items-center justify-content-around flex-column flex-md-row shadow-sm">
                <div class="page-title ms-5 position-relative">
                    <h1 class="fw-bold">نتائج البحث</h1>
                    <p>يوجد {{ $items->count() }} نتيجة بحث عن "كاميرا مراقبة" في سيبد</p>
                </div>
                <div class="page-img-hero">
                    <img src="{{ asset('assets/images/search-cam.png') }}" class="img-fluid" alt="search">
                </div>
            </div>
        </div>
    </section>


    <section class="my-5">
        <div class="container">
            <div class="d-flex flex-column flex-lg-row gap-5">
                <div class="py-4 px-3 rounded-4" style="background-color: #E6EDF7; min-width: 300px;">
                    <p class="main-title position-relative fw-bold mx-auto mb-4">تصفية النتائج</p>

                    <div class="mb-4">
                        <h6 class="fw-bold text-color mb-3">نوع الجهاز</h6>
                        <select id="type-select" class="form-select p-2 categoryName">
                            <option selected>كاميرات</option>
                            @foreach( $categories as $category )
                                <option value="{{ $category->id }}" data-img_src="../icon/marka-1.png">
                                    {{ $category->getTranslation('name', app()->getLocale()) }}
                                </option>
                            @endforeach
                        </select>
                    </div>


                    <div class="mb-4">
                        <h6 class="fw-bold text-color mb-3">الماركة</h6>
                        <div>
                            @foreach( $brands as $brand )
                                <input type="checkbox" name="brand_id" class="btn-check brandName" value="{{ $brand->id }}" id="btn-check-{{ $brand->id }}" autocomplete="off">
                                <label class="btn btn-white mb-1" for="btn-check-{{ $brand->id }}">
                                    <img src="{{ asset($brand->image) }}" alt="" height="10">
                                </label>
                            @endforeach
                        </div>
                    </div>

                    <div class="mb-4">
                        <h6 class="fw-bold text-color mb-3">السعر</h6>
                        <div>
                            <div>
                                <input type="radio" class="btn-check price" value="0 - 200" name="options" id="option1" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option1">أقل من 200 جنيه</label>
                            </div>
                            <div><input type="radio" class="btn-check price" value="201 - 500" name="options" id="option2" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option2">من 201 الى 500 جنيه</label></div>

                            <div><input type="radio" class="btn-check price" value="501 - 1000" name="options" id="option3" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option3">من 501 الى 1,000 جنيه</label></div>

                            <div><input type="radio" class="btn-check price" value="1001 - 1500" name="options" id="option4" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option4">من 1,001 الى 1,500 جنيه</label></div>

                            <div><input type="radio" class="btn-check price" value="1501 - 2000" name="options" id="option5" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option5">أكثر من 1,500 جنيه</label></div>

                        </div>
                    </div>
                </div>

                <div class="row w-100 items-card">
                    @include('web.search.items-card')
                </div>
                <input type="hidden" name="search" id="searchValue" value="{{ $search }}">
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.btn-like', function(e) {
                e.preventDefault();

                var id = $(this).data('id');

                var search = $('#searchValue').val();

                if( $(this).hasClass('active') ){

                    $.ajax({
                        url: "{{ route('my_favorite.delete') }}",
                        type: "GET",
                        data: {
                            id: id,
                        },
                        success: function(data) {
                            Swal.fire({
                                title: 'تم',
                                text: 'لقد تم إزالتها بنجاح',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });

                            $.ajax({
                                url: "{{ route('search.index') }}",
                                data: {
                                    search: search,
                                }
                            }).done(function (data) {
                                $(".items-card").html(data);
                            });
                        },
                        error: function(data) {
                            console.log(data)
                        }
                    })

                }else{

                    $.ajax({
                        url: "{{ route('my_favorite.store') }}",
                        type: "GET",
                        data: {
                            id: id,
                        },
                        success: function(data) {
                            Swal.fire({
                                title: 'تم',
                                text: 'لقد تم إضافتها بنجاح',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });

                            $.ajax({
                                url: "{{ route('search.index') }}",
                                data: {
                                    search: search,
                                }
                            }).done(function (data) {
                                $(".items-card").html(data);
                            });
                        },
                        error: function(data) {
                            console.log(data)
                        }
                    })

                }
            });
        </script>

        <script>
            $(document).on('change', '.categoryName',function (e) {
                let category_id = $(this).val();
                let brand_id = $("input[name='brand_id']:checked").val() ?? null;
                let price = $("input[name='options']:checked").val() ?? "0 - 10000";
                price = price.split('-')

                var url = $(this).attr('href');
                getData(url, {category_id: category_id, brand_id: brand_id, price:price});

            });

            $(document).on('click', '.brandName',function (e) {
                let category_id = $('.categoryName').data('id');
                let brand_id = $("input[name='brand_id']:checked").val() ?? null;
                let price = $("input[name='options']:checked").val() ?? "0 - 10000";
                price = price.split('-')

                var url = $(this).attr('href');
                getData(url, {category_id: category_id, brand_id: brand_id, price:price});

            });

            $(document).on('click', '.price',function (e) {
                let category_id = $('.categoryName').data('id');
                let brand_id = $("input[name='brand_id']:checked").val() ?? null;
                let price = $("input[name='options']:checked").val() ?? "0 - 10000";
                price = price.split('-')


                var url = $(this).attr('href');
                getData(url, {category_id: category_id, brand_id: brand_id, price:price});

            });

            function getData(url, data = null) {
                $.ajax({
                    url: url,
                    data: data
                }).done(function (data) {
                    $(".items-card").empty().html(data);

                });

            }
        </script>
    @endpush
</x-front-layout>
