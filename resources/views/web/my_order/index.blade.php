<x-front-layout title="my-order">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">طلباتي</h1>
                    <p>طلباتك الحالية والسابقة عبر خدمات سبيد تريدنج</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 150px;"></div>
        <div class="container">
            <div class="row justify-content-start justify-content-xl-center">
                <div class="col-lg-5">
                    <p class="main-title position-relative fw-bold mb-4 mx-auto">طلبات جارية</p>
                    @if( $under_order )
                        @foreach($under_order as $u_order)
                            <a href="{{ route('my_order.show', ['id' => $u_order->id]) }}" style="text-decoration: none; color: #0B2242" class="card mb-4">
                                <div class="card-body">
                                    <div class="d-flex gap-4 justify-content-between">
                                        <div>
                                            <p class="fw-bold mb-1 text-main-color">المخرن</p>
                                            <ul class="mb-3 fs-6">
                                                <li>{{ $u_order->user->name }}</li>
                                                <li>{{ $u_order->user->mobile }}</li>
                                                <li>
                                                    {{ $u_order->address->adress }}
                                                </li>
                                                <li>
                                                    {{ $u_order->payment_method }}
                                                </li>
                                            </ul>
                                            <div class="d-flex align-items-center gap-3">
                                                <img src="{{ asset('assets/icon/about.svg') }}" width="25">
                                                <span>جاري مراجعة الطلب</span>
                                            </div>
                                        </div>
                                        <div class="border-start ps-3">
                                            <span class="fw-bold text-main-color">#{{ $u_order->id }}</span>
                                            <div class="d-flex flex-column mt-2">
                                                @foreach($u_order->details as $detail)
                                                    @if( $detail->item )
{{--                                                        @dd($detail->item->images()->first())--}}
                                                        <img src="{{ $detail->item->images()->first()->url ?? asset('assets/images/camera.png') }}" class="mb-1" alt="" width="45">
                                                    @else
                                                        <img src="{{ asset('assets/images/camera.png') }}" class="mb-1" alt="" width="45">
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    @endif
                </div>
                <div class="col-lg-5">
                    <p class="main-title position-relative fw-bold mb-4 mx-auto">طلبات سابقة</p>
                    @if( $order_done )
                        @foreach( $order_done as $order )
                            <a href="{{ route('my_order.show', ['id' => $order->id]) }}" style="text-decoration: none; color: #0B2242" class="card mb-4">
                                <div class="card-body">
                                    <div class="d-flex gap-4 justify-content-between">
                                        <div>
                                            <p class="fw-bold mb-1 text-main-color">المعرض</p>
                                            <ul class="mb-3 fs-6">
                                                <li>
                                                    {{ $order->user->name }}
                                                </li>
                                                <li>
                                                    {{ $order->user->mobile }}
                                                </li>
                                                <li>
                                                    {{ $order->address->address }}
                                                </li>
                                                <li>
                                                    {{ $order->payment_method }}
                                                </li>
                                            </ul>
                                            <div class="d-flex align-items-center gap-3">
                                                <img src="{{ asset('assets/icon/check.svg') }}" width="25">
                                                <span>
                                                    {{ \Carbon\Carbon::parse($order->delivered_at)->locale('ar')->isoFormat('LLLL') ?? 'ليس بعد' }}
                                                </span>
                                            </div>
                                        </div>
                                        <div class="border-start ps-3">
                                            <span class="fw-bold text-main-color">#{{ $order->id }}</span>
                                            <div class="d-flex flex-column mt-2">
                                                @foreach($order->details as $detail)
                                                    @if( $detail->item )
                                                        <img src="{{ $detail->item->images()->first()->url }}" class="mb-1" alt="" width="45">
                                                    @else
                                                        <img src="{{ asset('assets/images/camera.png') }}" class="mb-1" alt="" width="45">
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
