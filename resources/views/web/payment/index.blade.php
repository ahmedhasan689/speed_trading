<x-front-layout title="Success">
    <section class="mt-3 mt-lg-5">
        <div class="container">
            <div class="rounded-4 pt-5 px-2 px-md-5 shadow-sm" style="background:#E6EDF7; min-height: 75vh;">
                <div class="page-title ms-5 position-relative">
                    <h1 class="fw-bold">تم الطلب بنجاح</h1>
                    <p>يتم مراجعة الطلب خلال 24 ساعة والشحن خلال يومين. بإمكانك متابعة <br>حالة الطلب من صفحة طلباتي</p>
                </div>
                <div class="d-flex flex-column my-4 ms-0 ms-md-5">
                    <a href="{{ route('my_order.index') }}" class="btn btn-primary py-2 rounded-4 mb-3" style="width: 200px">
                        <span>طلباتي</span>
                        <img src="{{ asset('assets/icon/arrow_next.svg') }}" class="float-end" width="25">
                    </a>
                    <a href="{{ route('home') }}" class="btn btn-white py-2 rounded-4" style="width: 200px">
                        <span>الرئيسية</span>
                        <img src="{{ asset('assets/icon/home.svg') }}" class="float-end" width="25">
                    </a>
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
