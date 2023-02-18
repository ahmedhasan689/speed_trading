<x-front-layout title="Favorites">
    <section>
        <div class="py-5 bg-light">
            <div class="container">
                <div class="page-title my-5 ms-5 position-relative">
                    <h1 class="fw-bold">المفضلة</h1>
                    <p>منتجاتك التي قمت بحفظها لفترة لاحقة أثناء تصفحك الموقع</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 mb-5 position-relative">
        <div class="bg-light position-absolute top-0 start-0 end-0" style="height: 150px;"></div>
        <div class="container">
            <div class="row items-card">
                @include('web.my_favorite.items-card')
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.btn-like', function(e) {
                e.preventDefault();

                var id = $(this).data('id');

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
                            url: "{{ route('my_favorite.index') }}",
                        }).done(function (data) {
                            $(".items-card").html(data);
                        });
                    },
                    error: function(data) {
                        console.log(data)
                    }
                })


            });
        </script>
    @endpush
</x-front-layout>
