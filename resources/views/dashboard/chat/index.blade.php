@extends('dashboard.layouts.app-chat')
@section('title'){!! __('Chat') !!}@endsection


@section('breadcrumb')
    @include('dashboard.layouts.partials._breadcrumb',[
    'route'=>route('dashboard.chat.index'),
    'level'=>'Chat'
    ])
@endsection

@section('content')

    <div class=" chat-application">
    <!-- BEGIN: Content-->
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-area-wrapper container-xxl p-0">
        <div class="sidebar-left">
            <div class="sidebar">

            <!-- Chat Sidebar area -->
                <div class="sidebar-content">
                    <!-- Sidebar header end -->

                    <!-- Sidebar Users start -->
                    <div id="users-list" class="chat-user-list-wrapper list-group">
                        <h4 class="chat-list-title">Chats</h4>
                        <ul class="chat-users-list chat-list media-list" style="overflow-y: scroll;height: 368px;">
                            @foreach($list as $one)


                                    <li class="one-chat" id="{{$one->id}}">



                                        <span class="avatar"><img src="{!!$one->user->image ? url(optional($one->user)->image) : '' !!}" height="42" width="42" alt="Generic placeholder image" />
                                        <span class="avatar-status-offline"></span>
                                    </span>
                                        <div class="chat-info flex-grow-1">
                                            <h5 class="mb-0">{{optional($one->user)->name}}</h5>

                                        </div>
                                    </li>


                            @endforeach

                            {{--                                    <li class="no-results">--}}
                            {{--                                        <h6 class="mb-0">No Chats Found</h6>--}}
                            {{--                                    </li>--}}
                        </ul>

                    </div>
                    <!-- Sidebar Users end -->
                </div>
                <!--/ Chat Sidebar area -->

            </div>
        </div>
        <div class="content-right">
            <div class="content-wrapper container-xxl p-0">
                <div class="content-header row">
                </div>
                <div class="content-body">
                    <div class="body-content-overlay"></div>
                    <!-- Main chat area -->
                    <section class="chat-app-window">
                        <!-- To load Conversation -->
                        @if($messages == null)
                            <div class="start-chat-area">
                                <div class="mb-1 start-chat-icon">
                                    <i data-feather="message-square"></i>
                                </div>
                            </div>
                            <!--/ To load Conversation -->
                        @else
                        <!-- Active Chat -->
                            <div class="active-chat ">
                                <!-- Chat Header -->
                                <div class="chat-navbar">
                                    <header class="chat-header">
                                        <div class="d-flex align-items-center">
                                            <div class="sidebar-toggle d-block d-lg-none mr-1">
                                                <i data-feather="menu" class="font-medium-5"></i>
                                            </div>
                                            <div class="avatar avatar-border user-profile-toggle m-0 mr-1">
                                                @if(\App\Models\ChatChannel::find(request()->id)->provider->image)
                                                    <img src="{{url(\App\Models\ChatChannel::find(request()->id)->provider->image)}}" alt="avatar" height="36" width="36" />
                                                @endif
                                                <span class="avatar-status-busy"></span>
                                            </div>
                                            <h6 class="mb-0">{{\App\Models\ChatChannel::find(request()->id)->user->name}}</h6>
                                        </div>
                                    </header>
                                </div>
                                <!--/ Chat Header -->

                                <!-- User Chat messages -->
                                <div class="user-chats " style="overflow-y: scroll; height: 297px;">
                                    <div class="chats" id="chats">
                                        @foreach($messages as $message)
                                            <div class="chat @if($message->from_id == auth()->id()) chat-left @endif">
                                                <div class="chat-avatar">
                                                <span class="avatar box-shadow-1 cursor-pointer">
                                                    @if($message->from->image)
                                                        <img src="{{url(optional($message->from)->image)}}" alt="avatar" height="36" width="36" />
                                                    @endif
                                                </span>
                                                </div>
                                                <div class="chat-body">
                                                    <div class="chat-content">
                                                        <p>{{$message->message}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                                <!-- User Chat messages -->
                                    <form class="chat-app-form" action="javascript:void(0);" onsubmit="submitChat();">
                                        <div class="input-group input-group-merge mr-1 form-send-message">
                                            <input id="chat-text" type="text" class="form-control message" placeholder="{{__('Type your message or use speech to text')}}">
                                        </div>
                                        <button type="button" class="btn btn-primary send waves-effect waves-float waves-light" onclick="submitChat();">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-send d-lg-none"><line x1="22" y1="2" x2="11" y2="13"></line><polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg>
                                            <span class="d-none d-lg-block">{{__('Send')}}</span>
                                        </button>
                                    </form>
                            </div>
                            <!--/ Active Chat -->
                        @endif
                    </section>
                    <!--/ Main chat area -->



                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->

    </div>
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

@endsection

@section('footer')
    <script>
        $('.user-chats').scrollTop($('.user-chats > .chats').height());
        $( ".one-chat" ).click(function() {
            console.log('click');
            var id = $(this).attr('id');

            window.location.href = '{{route('dashboard.chat.index')}}'+'?id='+id;
        });
        $( document ).ready(function() {
            $('.user-chats').scrollTop($('.user-chats > .chats').height());
        });

        function submitChat(){
            let _token   = $('meta[name="csrf-token"]').attr('content');
            var text = $('#chat-text').val();
            var html = '<div class="chat-content">' + '<p>' + text + '</p>' + '</div>';

            $.ajax('{{ route('dashboard.chat.store')}}', {
                type: 'post',  // http method
                data: {
                    'channel_id':'{{ request()->id }}',
                    'message':text,
                    _token: _token
                } ,  // data to submit
                success: function (data, status, xhr) {
                    console.log(data);
                    $('.chat:last-child .chat-body').append(html);
                    $('.message').val('');
                    $('.user-chats').scrollTop($('.user-chats > .chats').height());

                },
                error: function (jqXhr, textStatus, errorMessage) {
                    // $('p').append('Error' + errorMessage);
                }
            });

        }
    </script>
@endsection
