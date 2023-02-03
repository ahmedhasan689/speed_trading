<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto"><a class="navbar-brand" href="{{route('dashboard.home')}}">
                    <div>
<img src="{{asset('assets')}}/dashboard/resources/app-assets/images/logo.png" style="
    width: 30px;
    margin-bottom: 7px;"></div>
                    <h2 class="brand-text mb-0">{{__(env('APP_NAME'))}}</h2>
                </a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="feather icon-x d-block d-xl-none font-medium-4 primary toggle-icon"></i><i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block primary" data-ticon="icon-disc"></i></a></li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class=" nav-item @if(Request::is('dashboard/home')) active open  @endif">
                <a href="{{route('dashboard.home')}}">
                    <i class="feather icon-home"></i><span class="menu-title" data-i18n="Dashboard">{{__('Home')}}</span>
                </a>
            </li>

            <li class=" nav-item @if(Request::is('dashboard/users')) active open  @endif">
                <a href="{{route('dashboard.users.index')}}">
                    <i class="feather icon-users"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Users')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/clients')) active open  @endif">
                <a href="{{route('dashboard.clients.index')}}">
                    <i class="feather icon-users"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Clients')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/providers')) active open  @endif">
                <a href="{{route('dashboard.providers.index')}}">
                    <i class="feather icon-users"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Providers')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/categories')) active open  @endif">
                <a href="{{route('dashboard.categories.index')}}">
                    <i class="feather icon-folder"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Categories')}}</span>
                </a>
            </li>

            <li class=" nav-item @if(Request::is('dashboard/brands')) active open  @endif">
                <a href="{{route('dashboard.brands.index')}}">
                    <i class="feather icon-gift"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Brands')}}</span>
                </a>
            </li>

            <li class=" nav-item @if(Request::is('dashboard/promocodes')) active open  @endif">
                <a href="{{route('dashboard.promocodes.index')}}">
                    <i class="feather icon-gift"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Promo codes')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/items')) active open  @endif">
                <a href="{{route('dashboard.items.index')}}">
                    <i class="feather icon-image"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Items')}}</span>
                </a>
            </li>

            <li class=" nav-item @if(Request::is('dashboard/orders')) active open  @endif">
                <a href="{{route('dashboard.orders.index')}}">
                    <i class="feather icon-image"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Orders')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/sliders')) active open  @endif">
                <a href="{{route('dashboard.sliders.index')}}">
                    <i class="feather icon-image"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Sliders')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/contacts')) active open  @endif">
                <a href="{{route('dashboard.contacts.index')}}">
                    <i class="feather icon-users"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Contact')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/governorates')) active open  @endif">
                <a href="{{route('dashboard.governorates.index')}}">
                    <i class="feather icon-home"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Governorates')}}</span>
                </a>
            </li>


            <li class=" nav-item @if(Request::is('dashboard/cities')) active open  @endif">
                <a href="{{route('dashboard.cities.index')}}">
                    <i class="feather icon-home"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Cities')}}</span>
                </a>
            </li>

            <li class=" nav-item @if(Request::is('dashboard/notifications')) active open  @endif">
                <a href="{{route('dashboard.notifications.index')}}">
                    <i class="feather icon-home"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Send Notifications')}}</span>
                </a>
            </li>

            <li class="nav-item has-sub @if(
    Request::is('dashboard/events') ||
    Request::is('dashboard/events')
    ) active open  @endif" style=""><a class="d-flex align-items-center" href="#"><i class="fa fa-server"></i><span class="menu-title text-truncate" >{{__('Services')}}</span></a>
                <ul class="menu-content">
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/events')) active  @endif" href="{{route('dashboard.events.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Events')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/event-reservations')) active  @endif" href="{{route('dashboard.event-reservations.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Event reservations')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/job-categories')) active  @endif" href="{{route('dashboard.job-categories.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Job categories')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/jobs')) active  @endif" href="{{route('dashboard.jobs.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Jobs')}}</span></a>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/job-applications')) active  @endif" href="{{route('dashboard.job-applications.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Job applications')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/rooms')) active  @endif" href="{{route('dashboard.rooms.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Room')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/solutions')) active  @endif" href="{{route('dashboard.solutions.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Solutions')}}</span></a>
                    </li>


                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/training')) active  @endif" href="{{route('dashboard.trainings.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Certified trainings')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/training-reservations')) active  @endif" href="{{route('dashboard.training-reservations.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Certified trainings reservations')}}</span></a>
                    </li>


                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/speed-trainings')) active  @endif" href="{{route('dashboard.speed-trainings.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Speed Trainings')}}</span></a>
                    </li>
                    <li><a class="d-flex align-items-center @if(Request::is('dashboard/speed-training-reservations')) active  @endif" href="{{route('dashboard.speed-training-reservations.index')}}"><i class="fa fa-circle-o"></i><span class="menu-item text-truncate " data-i18n="Basic">{{__('Speed training reservations')}}</span></a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item @if(Request::is('dashboard/pages')) active open  @endif">
                <a href="{{route('dashboard.pages.index')}}">
                    <i class="feather icon-file"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Pages')}}</span>
                </a>
            </li>
            <li class=" nav-item @if(Request::is('dashboard/faqs')) active open  @endif">
                <a href="{{route('dashboard.faqs.index')}}">
                    <i class="feather icon-question-mark"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('FAQs')}}</span>
                </a>
            </li>
            <li class=" nav-item @if(Request::is('dashboard/chat')) active open  @endif">
                <a href="{{route('dashboard.chat.index')}}">
                    <i class="feather icon-home"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('Chat')}}</span>
                </a>
            </li>



            <li class=" nav-item @if(Request::is('dashboard/system-options')) active open  @endif">
                <a href="{{route('dashboard.system-options.index')}}">
                    <i class="feather icon-settings"></i><span class="menu-item" data-i18n="Fixed navbar">{{__('System options')}}</span>
                </a>
            </li>


        </ul>
    </div>
</div>
<!-- END: Main Menu-->
