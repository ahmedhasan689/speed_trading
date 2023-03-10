<x-front-layout title="">
    <section class="my-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-5">
                    <div class="bg-light support-sec rounded-4 p-1 p-md-4">
                        <div class="page-title my-5 ms-5 position-relative">
                            <h1 class="fw-bold">الدعم الفنّي</h1>
                            <p>ابدأ محادثة مع فريق احترافي في التعامل الفني مع الأجهزة ومكونات النظم الامنية</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="support-chat rounded-4">
                        <div class="text-muted text-center rounded-bottom rounded-4 p-2" style="background: #013880" id="chats">
                            <small>أنت الآن تتحدث مع مندوب خدمة العملاء</small>
                        </div>

                        <div class="chat-wrapper text-white position-relative d-flex align-items-center justify-content-center pb-3">
                            <div class="chat-box pb-5 pt-2">
                                <p class="text-muted text-center fs-6">بداية المحادثة</p>

                                <div class="d-flex justify-content-end align-items-center gap-4 mb-3 fs-6">
                                    <small class="text-muted">10:37:09</small>
                                    <div class="chat-text text-bg-primary rounded-3 p-2">تتفهم هيكفيجن هذه الاحتياجات الفريدة</div>
                                </div>

                                @if( $messages->count() > 0 )
                                    @foreach($messages as $message)



                                        <div class="d-flex
                                        @if( $message->from_id === $message->channel->user_id )
                                            justify-content-start
                                        @else
                                            justify-content-end
                                        @endif align-items-center gap-4 mb-3 fs-6">
                                            @if( $message->from_id != $message->channel->user_id )
                                                <small class="text-muted">
                                                    {{ \Carbon\Carbon::parse($message->created_at)->format('H:i:s') }}
                                                </small>
                                            @endif
                                            <div class="chat-text
                                            @if( $message->from_id === $message->channel->user_id )
                                                text-bg-light
                                            @else
                                                text-bg-primary
                                            @endif rounded-3 p-2">
                                                {{ $message->message }}
                                            </div>

                                            @if( $message->from_id === $message->channel->user_id )
                                                <small class="text-muted">
                                                    {{ \Carbon\Carbon::parse($message->created_at)->format('H:i:s') }}
                                                </small>
                                            @endif
                                        </div>
                                    @endforeach

                                @else
                                    <div class="d-flex justify-content-end align-items-center gap-4 mb-3 fs-6">
                                        <small class="text-muted">10:37:09</small>
                                        <div class="chat-text text-bg-primary rounded-3 p-2">تتفهم هيكفيجن هذه الاحتياجات الفريدة</div>
                                    </div>
                                    <div class="d-flex @if( $channel->user_id == auth()->id() ) justify-content-start @else justify-content-end @endif align-items-center gap-4 mb-3 fs-6">
                                        <div class="chat-text text-bg-light rounded-3 p-2">
                                            user D
                                        </div>
                                        <small class="text-muted">10:37:09</small>
                                    </div>
                                @endif

                            </div>

                            <div class="chat-input">
                                <div class="input-group flex-nowrap">
                                    <input type="hidden" class="form-control border-0 py-2" id="channelId" name="channel_id" value="{{ $channel->id }}">
                                    <input type="text" class="form-control border-0 py-2 message" id="message" placeholder="اكتب رسالتك...">
                                    <button type="submit" class="input-group-text bg-white border-0 sendBtn">
                                        <img src="{{ asset('assets/icon/start.svg') }}" width="20">
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    @push('js')
        <script>
            $(document).on('click', '.sendBtn', function(e) {
                e.preventDefault();

                var message = $('#message').val(),
                    channel_id = $('#channelId').val();

                $.ajax({
                    url: "{{ route('chat.store') }}",
                    type: "GET",
                    data: {
                        message: message,
                        channel_id: channel_id,
                    },
                    success: function(data) {
                        $('.chat-box').append(`
                            <div class="d-flex justify-content-start align-items-center gap-4 mb-3 fs-6">
                                <div class="chat-text text-bg-light rounded-3 p-2">
                                   `+ data.message.message +`
                                </div>
                                <small class="text-muted">
                                    `+ data.time +`
                                </small>
                            </div>
                        `)

                        $('#message').val('');

                    },
                    error: function(data) {

                    }

                });
            });
        </script>
    @endpush
</x-front-layout>
