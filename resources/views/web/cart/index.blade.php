<x-front-layout title="Cart">
    <section>
        <div class="py-5" style="background: #0B2242;">
            <div class="container">
                <div class="page-title-2 my-5 ms-5 position-relative">
                    <h1 class="fw-bold">سلّة المشتريات</h1>
                    <p>تصفح المنتجات الأكثر مبيعاً من خلال موقع سبيد</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative cart-page">
        <div class="position-absolute top-0 start-0 end-0" style="height: 150px; background: #0B2242;"></div>
        <div class="container">
            <div class="row cart_details">
                @include('web.cart.cart_details')
            </div>
        </div>
    </section>

    @push('js')
        <script>
            // Plus Functionality
            $(document).on('click', '.plus',  function(e) {
                e.preventDefault();

                var item_id = $(this).data('id');

                $.ajax({
                    url: "{{ route('cart.getItem') }}",
                    type: "GET",
                    data: {
                        id: item_id,
                    },
                    success: function(data) {
                        let price = data.item.price

                        $.ajax({
                            url: "{{ url('carts/add-to-cart') }}/"+item_id,
                            type: "POST",
                            data: {
                                "_token": "{{ csrf_token() }}",
                                id: item_id,
                            },
                            success: function(data){
                                var old = $('.quantity-'+item_id).text();

                                new_val = parseInt(old) + 1;

                                if( new_val > 1 ) {
                                    $('.loss-'+item_id).attr('disabled', false)
                                }

                                $('.quantity-'+item_id).text(new_val);
                                $('.price-'+item_id).text(price * new_val + "L.E");
                            },
                            error: function(data){

                            },
                        })



                    },
                    error: function(data) {

                    },
                });



            })

            // Less Functionality
            $(document).on('click', '.loss',  function(e) {
                e.preventDefault();

                var item_id = $(this).data('id');

                $.ajax({
                    url: "{{ route('cart.getItem') }}",
                    type: "GET",
                    data: {
                        id: item_id,
                    },
                    success: function(data) {
                        let price = data.item.price

                        $.ajax({
                            url: "{{ route('cart.lossQuantity') }}",
                            type: "GET",
                            data: {
                                "_token": "{{ csrf_token() }}",
                                id: item_id,
                            },
                            success: function(data){
                                var old = $('.quantity-'+item_id).text();

                                new_val = parseInt(old) - 1;

                                if( new_val == 1 ) {
                                    $('.loss-'+item_id).attr('disabled', true)
                                }else{
                                    $('.loss-'+item_id).attr('disabled', false)
                                }

                                $('.quantity-'+item_id).text(new_val);
                                $('.price-'+item_id).text(price * new_val + "L.E");
                            },
                            error: function(data){

                            },
                        })



                    },
                    error: function(data) {

                    },
                });
            })

            // Delete Functionality
            $(document).on('click', '.deleteItem', function(e) {
                var id = $(this).data('id')

                $.ajax({
                    url: "{{ route('cart.delete') }}",
                    type: "GET",
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        $.ajax({
                            url: "{{ route('cart.index') }}",
                        }).done(function(data) {
                            Swal.fire({
                                title: 'تم',
                                text: 'لقد تم الحذف بنجاح',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: 'إغلاق',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });

                            $('.cart_details').html(data);
                        });
                    },
                    error: function(data) {

                    },
                })
            });
        </script>
    @endpush

</x-front-layout>
