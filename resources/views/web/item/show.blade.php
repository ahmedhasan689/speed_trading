<x-front-layout title="{{ $item->getTranslation('name', app()->getLocale()) }}">
    <section class="my-5 product-details">
        <div class="container">
            <div class="row items-details">
                @include('web.item.item_details')
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.btn-like', function(e) {
                e.preventDefault();

                var id = $(this).data('id');

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
                                url: "{{ route('item.show', ['id' => $item->id]) }}",
                            }).done(function (data) {
                                $(".items-details").html(data);
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
                                url: "{{ route('item.show', ['id' => $item->id]) }}",
                            }).done(function (data) {
                                $(".items-details").html(data);
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
