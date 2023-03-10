<x-front-layout title="{{ $training->getTranslation('title', app()->getLocale()) }}">
    <section class="my-5">
        <div class="container">
            <div class="d-flex flex-column flex-lg-row gap-5">
                <div class="w-100 mb-5">
                    <div class="ratio ratio-1x1">
                        @if( $training->images->first()->type == 'image' )
                            <img src="{{ asset('') . $training->images->first()->url }}" class="card-img-top object-fit-cover" style="object-fit:cover" height="200" alt="...">
                        @elseif( $training->images->first()->type == 'video' )
                            <iframe src="{{ $training->images->first()->url }}" class="rounded-4" title="YouTube video" allowfullscreen></iframe>
                        @endif
                    </div>
                </div>

                <div class="w-100">
                    <h5 class="fw-bold">
                        {{ $training->getTranslation('title', app()->getLocale()) }}
                    </h5>
                    <div class="d-flex gap-5 border-top-bottom my-4 py-3">
                        <div>
                            <img src="{{ asset('assets/icon/place.svg') }}" alt="" width="25">
                            <small class="ms-1">
                                {{ $training->location }}
                            </small>
                        </div>
                        <div>
                            <img src="{{ asset('assets/icon/events.svg') }}" alt="" width="25">
                            <small class="ms-1">
                                {{ \Carbon\Carbon::parse($training->date)->locale('ar')->isoFormat('LLLL') }}
                            </small>
                        </div>
                    </div>
                    <p>
                        {{ $training->getTranslation('content', app()->getLocale()) }}
                    </p>

                    @if( $training->date > \Carbon\Carbon::now() )
                        <button class="btn btn-light py-2 rounded-3 my-4 reservation" data-id="{{ $training->id }}" style="width: 200px;">
                            <span>?????? ??????</span>
                            <img src="{{ asset('assets/icon/external link.svg') }}" class="float-end" width="20">
                        </button>
                    @endif

                </div>
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.reservation', function(e) {
                e.preventDefault()

                var id = $(this).data('id');

                $.ajax({
                    url: "{{ route('training.reservation') }}",
                    type: "GET",
                    data: {
                        id: id
                    },
                    success: function(data) {
                        if( data.error ) {
                            Swal.fire({
                                title: '????',
                                text: '?????? ???? ?????????? ??????????',
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: '??????????',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });
                        }else{
                            Swal.fire({
                                title: '????',
                                text: '?????? ???? ?????????? ??????????',
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: '??????????',
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            });
                        }
                    },
                    error: function(data) {

                    }
                });
            });
        </script>
    @endpush
</x-front-layout>
