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
                        <div class="dropdown-center">
                            <button class="btn btn-white-2 dropdown-toggle p-2 w-100" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                كاميرات
                            </button>
                            <ul class="dropdown-menu rounded-3 w-100 px-2">
                                <li><a class="dropdown-item rounded-3 py-2" href="#">
                                        <img src="../icon/marka-1.png" class="me-3" width="30">
                                        <small class="fw-bold">HIKVISION</small>
                                    </a></li>
                                <li><a class="dropdown-item rounded-3 py-2" href="#">
                                        <img src="../icon/marka-2.png" class="me-3" width="30">
                                        <small class="fw-bold">Ex-Tell</small>
                                    </a></li>
                                <li><a class="dropdown-item rounded-3 py-2" href="#">
                                        <img src="../icon/marca-3.png" class="me-3" width="30">
                                        <small class="fw-bold">Digitals</small>
                                    </a></li>
                            </ul>
                        </div>
                    </div>


                    <div class="mb-4">
                        <h6 class="fw-bold text-color mb-3">الماركة</h6>
                        <div>
                            <input type="checkbox" class="btn-check" id="btn-check1" autocomplete="off">
                            <label class="btn btn-white mb-1" for="btn-check1">
                                <img src="../images/com-1.png" alt="" height="10">
                            </label>

                            <input type="checkbox" class="btn-check" id="btn-check2" autocomplete="off">
                            <label class="btn btn-white mb-1" for="btn-check2">
                                <img src="../images/com-2.png" alt="" height="10">
                            </label>

                            <input type="checkbox" class="btn-check" id="btn-check3" autocomplete="off">
                            <label class="btn btn-white mb-1" for="btn-check3">
                                <img src="../images/com-3.png" alt="" height="10">
                            </label>

                            <input type="checkbox" class="btn-check" id="btn-check4" autocomplete="off">
                            <label class="btn btn-white mb-1" for="btn-check4">
                                <img src="../images/com-4.png" alt="" height="10">
                            </label>
                        </div>
                    </div>

                    <div class="mb-4">
                        <h6 class="fw-bold text-color mb-3">السعر</h6>
                        <div>
                            <div>
                                <input type="radio" class="btn-check" name="options" id="option1" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option1">أقل من 200 جنيه</label>
                            </div>
                            <div><input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option2">من 201 الى 500 جنيه</label></div>

                            <div><input type="radio" class="btn-check" name="options" id="option3" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option3">من 501 الى 1,000 جنيه</label></div>

                            <div><input type="radio" class="btn-check" name="options" id="option4" autocomplete="off">
                                <label class="btn btn-white mb-1" for="option4">من 1,001 الى 1,500 جنيه</label></div>

                            <div><input type="radio" class="btn-check" name="options" id="option5" autocomplete="off">
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
    @endpush
</x-front-layout>
