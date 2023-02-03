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
            {{--                        <!-- Admin user profile area -->--}}
            {{--                        <div class="chat-profile-sidebar">--}}
            {{--                            <header class="chat-profile-header">--}}
            {{--                            <span class="close-icon">--}}
            {{--                                <i data-feather="x"></i>--}}
            {{--                            </span>--}}
            {{--                                <!-- User Information -->--}}
            {{--                                <div class="header-profile-sidebar">--}}
            {{--                                    <div class="avatar box-shadow-1 avatar-xl avatar-border">--}}
            {{--                                        <img src="{{asset('tasawk/adminpanel/vuexy/app-assets/images/pages/logo.png')}}" alt="user_avatar" />--}}
            {{--                                        <span class="avatar-status-online avatar-status-xl"></span>--}}
            {{--                                    </div>--}}
            {{--                                    <h4 class="chat-user-name">John Doe</h4>--}}
            {{--                                    <span class="user-post">Admin</span>--}}
            {{--                                </div>--}}
            {{--                                <!--/ User Information -->--}}
            {{--                            </header>--}}
            {{--                            <!-- User Details start -->--}}
            {{--                            <div class="profile-sidebar-area">--}}
            {{--                                <h6 class="section-label mb-1">About</h6>--}}
            {{--                                <div class="about-user">--}}
            {{--                                <textarea data-length="120" class="form-control char-textarea" id="textarea-counter" rows="5" placeholder="About User">--}}
            {{--Dessert chocolate cake lemon drops jujubes. Biscuit cupcake ice cream bear claw brownie brownie marshmallow.</textarea>--}}
            {{--                                    <small class="counter-value float-right"><span class="char-count">108</span> / 120 </small>--}}
            {{--                                </div>--}}
            {{--                                <!-- To set user status -->--}}
            {{--                                <h6 class="section-label mb-1 mt-3">Status</h6>--}}
            {{--                                <ul class="list-unstyled user-status">--}}
            {{--                                    <li class="pb-1">--}}
            {{--                                        <div class="custom-control custom-control-success custom-radio">--}}
            {{--                                            <input type="radio" id="activeStatusRadio" name="userStatus" class="custom-control-input" value="online" checked />--}}
            {{--                                            <label class="custom-control-label ml-25" for="activeStatusRadio">Active</label>--}}
            {{--                                        </div>--}}
            {{--                                    </li>--}}
            {{--                                    <li class="pb-1">--}}
            {{--                                        <div class="custom-control custom-control-danger custom-radio">--}}
            {{--                                            <input type="radio" id="dndStatusRadio" name="userStatus" class="custom-control-input" value="busy" />--}}
            {{--                                            <label class="custom-control-label ml-25" for="dndStatusRadio">Do Not Disturb</label>--}}
            {{--                                        </div>--}}
            {{--                                    </li>--}}
            {{--                                    <li class="pb-1">--}}
            {{--                                        <div class="custom-control custom-control-warning custom-radio">--}}
            {{--                                            <input type="radio" id="awayStatusRadio" name="userStatus" class="custom-control-input" value="away" />--}}
            {{--                                            <label class="custom-control-label ml-25" for="awayStatusRadio">Away</label>--}}
            {{--                                        </div>--}}
            {{--                                    </li>--}}
            {{--                                    <li class="pb-1">--}}
            {{--                                        <div class="custom-control custom-control-secondary custom-radio">--}}
            {{--                                            <input type="radio" id="offlineStatusRadio" name="userStatus" class="custom-control-input" value="offline" />--}}
            {{--                                            <label class="custom-control-label ml-25" for="offlineStatusRadio">Offline</label>--}}
            {{--                                        </div>--}}
            {{--                                    </li>--}}
            {{--                                </ul>--}}
            {{--                                <!--/ To set user status -->--}}

            {{--                                <!-- User settings -->--}}
            {{--                                <h6 class="section-label mb-1 mt-2">Settings</h6>--}}
            {{--                                <ul class="list-unstyled">--}}
            {{--                                    <li class="d-flex justify-content-between align-items-center mb-1">--}}
            {{--                                        <div class="d-flex align-items-center">--}}
            {{--                                            <i data-feather="check-square" class="mr-75 font-medium-3"></i>--}}
            {{--                                            <span class="align-middle">Two-step Verification</span>--}}
            {{--                                        </div>--}}
            {{--                                        <div class="custom-control custom-switch mr-0">--}}
            {{--                                            <input type="checkbox" class="custom-control-input" id="customSwitch1" checked />--}}
            {{--                                            <label class="custom-control-label" for="customSwitch1"></label>--}}
            {{--                                        </div>--}}
            {{--                                    </li>--}}
            {{--                                    <li class="d-flex justify-content-between align-items-center mb-1">--}}
            {{--                                        <div class="d-flex align-items-center">--}}
            {{--                                            <i data-feather="bell" class="mr-75 font-medium-3"></i>--}}
            {{--                                            <span class="align-middle">Notification</span>--}}
            {{--                                        </div>--}}
            {{--                                        <div class="custom-control custom-switch mr-0">--}}
            {{--                                            <input type="checkbox" class="custom-control-input" id="customSwitch2" />--}}
            {{--                                            <label class="custom-control-label" for="customSwitch2"></label>--}}
            {{--                                        </div>--}}
            {{--                                    </li>--}}
            {{--                                    <li class="mb-1 d-flex align-items-center cursor-pointer">--}}
            {{--                                        <i data-feather="user" class="mr-75 font-medium-3"></i>--}}
            {{--                                        <span class="align-middle">Invite Friends</span>--}}
            {{--                                    </li>--}}
            {{--                                    <li class="d-flex align-items-center cursor-pointer">--}}
            {{--                                        <i data-feather="trash" class="mr-75 font-medium-3"></i>--}}
            {{--                                        <span class="align-middle">Delete Account</span>--}}
            {{--                                    </li>--}}
            {{--                                </ul>--}}
            {{--                                <!--/ User settings -->--}}

            {{--                                <!-- Logout Button -->--}}
            {{--                                <div class="mt-3">--}}
            {{--                                    <button class="btn btn-primary">--}}
            {{--                                        <span>Logout</span>--}}
            {{--                                    </button>--}}
            {{--                                </div>--}}
            {{--                                <!--/ Logout Button -->--}}
            {{--                            </div>--}}
            {{--                            <!-- User Details end -->--}}
            {{--                        </div>--}}
            {{--                        <!--/ Admin user profile area -->--}}

            <!-- Chat Sidebar area -->
                <div class="sidebar-content">
{{--                        <span class="sidebar-close-icon">--}}
{{--                            <i data-feather="x"></i>--}}
{{--                        </span>--}}
                    <!-- Sidebar header start -->
{{--                    <div class="chat-fixed-search">--}}
{{--                        <div class="d-flex align-items-center w-100">--}}

{{--                            <div class="input-group input-group-merge ml-1 w-100">--}}
{{--                                <div class="input-group-prepend">--}}
{{--                                    <span class="input-group-text round"><i data-feather="search" class="text-muted"></i></span>--}}
{{--                                </div>--}}
{{--                                <input type="text" class="form-control round" id="chat-search" placeholder="Search or start a new chat" aria-label="Search..." aria-describedby="chat-search" />--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
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
                                                    <img src="{{url(\App\Models\ChatChannel::find(request()->id)->provider->image

)}}" alt="avatar" height="36" width="36" />
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
                                        {{--                                            @if($messages)--}}
                                        {{--                                                @foreach($messages as $message)--}}
                                        {{--                                                    <div class="chat @if($message->from_id == auth()->id()) chat-left @endif">--}}
                                        {{--                                                        <div class="chat-avatar">--}}
                                        {{--                                                        <span class="avatar box-shadow-1 cursor-pointer">--}}
                                        {{--                                                            <img src="{{asset('tasawk/adminpanel/vuexy/app-assets/images/pages/logo.png')}}" alt="avatar" height="36" width="36" />--}}
                                        {{--                                                        </span>--}}
                                        {{--                                                        </div>--}}
                                        {{--                                                        <div class="chat-body">--}}
                                        {{--                                                            <div class="chat-content">--}}
                                        {{--                                                                <p>Hey John, I am looking for the best admin template.</p>--}}
                                        {{--                                                                <p>Could you please help me to find it out? 🤔</p>--}}
                                        {{--                                                            </div>--}}
                                        {{--                                                        </div>--}}
                                        {{--                                                    </div>--}}
                                        {{--                                                @endforeach--}}
                                        {{--                                            @endif--}}
                                        {{--                                            <div class="chat chat-left">--}}
                                        {{--                                                <div class="chat-avatar">--}}
                                        {{--                                                <span class="avatar box-shadow-1 cursor-pointer">--}}
                                        {{--                                                    <img src="{{asset('tasawk/adminpanel/vuexy/app-assets/images/pages/logo.png')}}" alt="avatar" height="36" width="36" />--}}
                                        {{--                                                </span>--}}
                                        {{--                                                </div>--}}
                                        {{--                                                <div class="chat-body">--}}
                                        {{--                                                    <div class="chat-content">--}}
                                        {{--                                                        <p>It should be Bootstrap 4 compatible.</p>--}}
                                        {{--                                                    </div>--}}
                                        {{--                                                </div>--}}
                                        {{--                                            </div>--}}

                                    </div>
                                </div>
                                <!-- User Chat messages -->
                                    <form class="chat-app-form" action="javascript:void(0);" onsubmit="submitChat();">
                                        <div class="input-group input-group-merge mr-1 form-send-message">
                                            {{--                                            <div class="input-group-prepend">--}}
                                            {{--                                                <span class="speech-to-text input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mic cursor-pointer"><path d="M12 1a3 3 0 0 0-3 3v8a3 3 0 0 0 6 0V4a3 3 0 0 0-3-3z"></path><path d="M19 10v2a7 7 0 0 1-14 0v-2"></path><line x1="12" y1="19" x2="12" y2="23"></line><line x1="8" y1="23" x2="16" y2="23"></line></svg></span>--}}
                                            {{--                                            </div>--}}
                                            <input id="chat-text" type="text" class="form-control message" placeholder="{{__('Type your message or use speech to text')}}">
                                            {{--                                            <div class="input-group-append">--}}
                                            {{--                                            <span class="input-group-text">--}}
                                            {{--                                                <label for="attach-doc" class="attachment-icon mb-0">--}}
                                            {{--                                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-image cursor-pointer lighten-2 text-secondary"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><circle cx="8.5" cy="8.5" r="1.5"></circle><polyline points="21 15 16 10 5 21"></polyline></svg>--}}
                                            {{--                                                    <input type="file" id="attach-doc" hidden=""> </label></span>--}}
                                            {{--                                            </div>--}}
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

            $.ajax('{{route('dashboard.chat.store')}}', {
                type: 'post',  // http method
                data: {
                    'channel_id':'{{request()->id}}',
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
