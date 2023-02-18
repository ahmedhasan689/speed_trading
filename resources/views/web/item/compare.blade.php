<x-front-layout title="Compare">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">مقارنة المنتجات</h1>
                    <p>قارن بين المنتجات المختلقة لاختيار الأفضل بالنسبة لك</p>
                </div>
            </div>
        </div>
    </section>
    <section class="mb-5">
        <div class="container">
            <table class="table table-bordered border-dark border-opacity-10 w-auto">
                <thead>
                    <tr>
                        <th scope="col" class="bg-light"></th>
                        <th scope="col">
                            <div class="d-flex flex-column justify-content-center align-items-center gap-3 pt-5 pb-3">
                                <img src="{{ asset('/') . $item->images()->first()->url ?? asset('assets/images/camera.png') }}" width="80">
                            </div>
                        </th>
                        @foreach($compare_items as $single_item)
                            <th scope="col">
                                <div class="d-flex flex-column justify-content-center align-items-center gap-3 pt-5 pb-3">
                                    <img src="{{ $single_item->images()->first()->url ?? asset('assets/images/camera.png') }}" width="80">
                                </div>
                            </th>
                        @endforeach

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" class="bg-light p-4">الاسم</th>
                        <td>{{ $item->getTranslation('name', app()->getLocale()) }}</td>
                        @foreach($compare_items as $single_item)
                            <td>
                                {{ $single_item->getTranslation('name', app()->getLocale()) }}
                            </td>
                        @endforeach
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">الماركة</th>
                        <td>
                            <img src="{{ asset('/') . $item->brand->image }}" width="85">
                        </td>
                        @foreach($compare_items as $single_item)
                            <td>
                                <img src="{{ asset('/') . $single_item->brand->image }}" width="85">
                            </td>
                        @endforeach
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">النوع</th>
                        <td>
                            {{ $item->category->getTranslation('name', app()->getLocale()) }}
                        </td>
                        @foreach($compare_items as $single_item)
                            <td>
                                {{ $single_item->category->getTranslation('name', app()->getLocale()) }}
                            </td>
                        @endforeach
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">جودة الصورة</th>
                        <td>1920x1080</td>
                        <td>1280x720</td>
                        <td>1920x1080</td>
                        <td>1920x1080</td>
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">دقة العدسة</th>
                        <td>4MB</td>
                        <td>8MB</td>
                        <td>22MB</td>
                        <td>22MB</td>
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">حركة</th>
                        <td>true icon</td>
                        <td>X icon</td>
                        <td>true icon</td>
                        <td>true icon</td>
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">تصوير ليلي</th>
                        <td>true icon</td>
                        <td>X icon</td>
                        <td>true icon</td>
                        <td>true icon</td>
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">نمط التسجيل</th>
                        <td>H.264, H.265</td>
                        <td>H.264, H.265</td>
                        <td>H.264, H.265</td>
                        <td>H.264, H.265</td>
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">تخزين داخلي</th>
                        <td>true icon</td>
                        <td>X icon</td>
                        <td>true icon</td>
                        <td>true icon</td>
                    </tr>
                    <tr>
                        <th scope="row" class="bg-light p-4">السعر</th>
                        <td>{{ $item->price }} L.E</td>
                        @foreach($compare_items as $single_item)
                            <td>{{ $single_item->price }} L.E</td>
                        @endforeach
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</x-front-layout>
