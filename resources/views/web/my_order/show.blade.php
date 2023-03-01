<x-front-layout title="Order Details">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">تفاصيل الطلب #{{ $order->id }}</h1>
                    <p>طلباتك الحالية والسابقة عبر خدمات سبيد تريدنج</p>
                </div>
            </div>
        </div>
    </section>
    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 130px;"></div>
        <div class="container">
            <div class="row justify-content-start justify-content-xl-center show_details">
                @include('web.my_order.show_details')
            </div>
        </div>

        <div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content border-0 gap-4 bg-transparent">
                    <div class="modal-body bg-white rounded-4 p-5">
                        <p class="main-title position-relative fw-bold mx-auto">الغاء الطلب</p>
                        <p class="fs-6 text-center mb-4">هل أنت متأكد أنك تريد الغاء الطلب؟</p>

                        <button class="btn btn-primary w-100 px-3 py-2 rounded-3 mb-3 completeOrder">
                            <span>استكمل الطلب</span>
                            <img src="{{ asset('assets/icon/check.svg') }}" class="float-end" width="25">
                        </button>
                        <form action="{{ route('my_order.delete', ['id' => $order->id]) }}" method="POST">
                            @csrf
                            @method('DELETE')

                            <button class="btn btn-light w-100 px-3 py-2 rounded-3">
                                <span>الغاء الطلب</span>
                                <img src="{{ asset('assets/icon/close.svg') }}" class="float-end" width="25">
                            </button>
                        </form>
                    </div>
                </div>
            </div>
    </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.rateBtn', function(e) {
                var id = $(this).data('id');

                var rate =
                $('.rating_star').click(function(e) {
                    e.preventDefault();

                    var rate = $(this).val()

                    $('.rateSubmitBtn').click(function(e) {
                        var comment = $('.commentText-'+id).val();
                        $.ajax({
                            url: "{{ route('rate.store') }}",
                            type: "GET",
                            data: {
                                item_id: id,
                                order_id: {{ $order->id }},
                                rate: rate,
                                comment:comment,
                            },
                            success: function(data) {
                                $('#evalModal-'+id).modal('hide');

                                Swal.fire({
                                    title: 'تم',
                                    text: 'لقد تم التقييم بنجاح',
                                    icon: "success",
                                    buttonsStyling: false,
                                    confirmButtonText: 'إغلاق',
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                });
                                $('#editDataModal').modal('hide');
                                $.ajax({
                                    url: "{{ route('my_order.show', ['id' => $order->id]) }}",
                                }).done(function (data) {
                                    $(".show_details").html(data);
                                });
                            },
                            error: function(data) {

                            }
                        })
                    })
                })


                console.log(id);


            });
        </script>
        <script>
            $(document).on('click', '.completeOrder', function(e) {
                $('#cancelModal').modal('hide');
            });
        </script>
    @endpush
</x-front-layout>
