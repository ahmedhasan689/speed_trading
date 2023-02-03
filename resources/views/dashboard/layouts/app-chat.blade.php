<!doctype html>


<html class="loading" lang="{{ str_replace('_', '-', app()->getLocale()) }}" data-textdirection="{!! app()->getLocale() == 'ar'?'rtl':'ltr' !!}">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{__(env('APP_NAME'))}} | @yield('title')</title>
    <link rel="apple-touch-icon" href="{{asset('assets/dashboard/resources')}}/app-assets/images/logo.png">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/dashboard/resources')}}/app-assets/images/logo.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">

    @include('dashboard.layouts.partials._styles')
    @yield('header')
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout {!! auth()->user()->default_theme?'':'dark-layout' !!}dark-layout vertical-menu-modern 2-columns  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

@include('dashboard.layouts.partials._nav')

@include('dashboard.layouts.partials._menu')

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        @yield('breadcrumb')
                    </div>
                </div>
            </div>
            <div class="content-header-right text-md-right col-md-3 col-12 d-md-block d-none">
                <div class="form-group breadcrum-right">
                    <div class="dropdown">

                        @yield('btn')

                    </div>
                </div>
            </div>
        </div>
        <div class="content-body"  style="margin-top: -112px;">
            <!-- Description -->
                @yield('content')
         <!--/ Description -->


        </div>
    </div>
</div>
<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light">
{{--    <p class="clearfix blue-grey lighten-2 mb-0"><span class="float-md-left d-block d-md-inline-block mt-25">COPYRIGHT &copy; {{date('Y')}}<a class="text-bold-800 grey darken-2" href="#" target="_blank">Mozawed,</a>All rights Reserved</span>--}}
        <button class="btn btn-primary btn-icon scroll-top" type="button"><i class="feather icon-arrow-up"></i></button>
    </p>
</footer>
<!-- END: Footer-->

@include('dashboard.layouts.partials._scripts')
@include('sweetalert::alert')
@yield('js-validation')
@yield('footer')

<script>
    // Import the functions you need from the SDKs you need

    // Your web app's Firebase configuration
    var firebaseConfig = {
        apiKey: "AIzaSyCemzornJbSiRrL0UxDkcw7GUCmwl26_Kw",
        authDomain: "diora-df654.firebaseapp.com",
        projectId: "diora-df654",
        storageBucket: "diora-df654.appspot.com",
        messagingSenderId: "493337235289",
        appId: "1:493337235289:web:74f4ffe2211d2631084648"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);

    const messaging = firebase.messaging();

    function initFirebaseMessagingRegistration() {
        messaging.requestPermission().then(function () {
            return messaging.getToken()
        }).then(function(token) {

            axios.post("{{ route('fcmToken') }}",{
                _method:"PATCH",
                token
            }).then(({data})=>{
                console.log(data)
            }).catch(({response:{data}})=>{
                console.error(data)
            })

        }).catch(function (err) {
            console.log(`Token Error :: ${err}`);
        });
    }

    initFirebaseMessagingRegistration();

    messaging.onMessage(function(data){
        console.log(data)
        if (data.data.is_chat == true) {
            var options = {
                body: data.notification.body
            }
            // new Notification(data.notification.title, options);
            if (data.data.channel_id == {{request()->id}}){
                if(data.data.from_id != {{auth()->id()}}) {
                    var text = data.notification.body;
                    var html = '<div class="chat-content">' + '<p>' + text + '</p>' + '</div>';
                    $('.chat:last-child .chat-body').append(html);
                    $('.user-chats').scrollTop($('.user-chats > .chats').height());
                }
            }
        }


    });


</script>


</body>
<!-- END: Body-->

</html>
