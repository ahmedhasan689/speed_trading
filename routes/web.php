<?php

use App\Http\Controllers\Web\AccountController;
use App\Http\Controllers\Web\AddressController;
use App\Http\Controllers\Web\BrandsController;
use App\Http\Controllers\Web\CartController;
use App\Http\Controllers\Web\CategoriesController;
use App\Http\Controllers\Web\ChatController;
use App\Http\Controllers\Web\CompanyController;
use App\Http\Controllers\Web\ContactUsController;
use App\Http\Controllers\Web\CouponController;
use App\Http\Controllers\Web\EventsController;
use App\Http\Controllers\Web\FacebookController;
use App\Http\Controllers\Web\GoogleController;
use App\Http\Controllers\Web\HomeController;
use App\Http\Controllers\Web\ItemController;
use App\Http\Controllers\Web\JobsController;
use App\Http\Controllers\Web\MyFavoriteController;
use App\Http\Controllers\Web\MyOrdersController;
use App\Http\Controllers\Web\MyPointController;
use App\Http\Controllers\Web\PagesController;
use App\Http\Controllers\Web\PaymentController;
use App\Http\Controllers\Web\RateController;
use App\Http\Controllers\Web\RoomsController;
use App\Http\Controllers\Web\SearchController;
use App\Http\Controllers\Web\SolutionController;
use App\Http\Controllers\Web\SpeedForTrainingController;
use App\Http\Controllers\Web\TrainingController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect(route('dashboard.home'));
});
//
//Route::get('/dashboard', function () {
//    return view('dashboard');
//})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
Route::patch('/fcm-token', [\App\Http\Controllers\HomeController::class, 'updateToken'])->name('fcmToken');


Route::name('dashboard.')
    ->namespace('App\Http\Controllers\Dashboard')
    ->middleware(['language', 'auth', 'prevent.dashboard'])
    ->prefix('dashboard')->group(function () {

    Route::get('/', function () {
        return redirect(route('dashboard.home'));
    });
    Route::get('lang-ar', function () {
        session()->put('lang', 'ar');
        return back();
    })->name('lang-ar');

    Route::get('lang-en', function () {
        session()->put('lang', 'en');
        return back();
    })->name('lang-en');

    Route::get('home', 'HomeController@index')->name('home');

    Route::put('home/update/{id}', 'HomeController@update')->name('home.update');
    Route::get('home/edit', 'HomeController@edit')->name('home.edit');

    Route::get('switch-theme', 'UserController@switchTheme')->name('switch-theme');


    Route::get('subcategories','HomeController@subcategories')->name('subcategories');


    Route::get('targets','HomeController@targets')->name('targets');

    Route::resource('users', 'UserController');


    Route::get('archive-users','UserController@indexArchive')->name('archive-users');


    Route::put('restore-user/{id}','UserController@restore')->name('restore-user');

    Route::post('users/suspend/{id}','UserController@suspend')->name('users.suspend');


    Route::post('users/approve/{id}','UserController@approve')->name('users.approve');

    Route::post('users/disapprove/{id}','UserController@disapprove')->name('users.disapprove');


    Route::resource('clients', 'ClientController');


    Route::get('archive-clients','ClientController@indexArchive')->name('archive-clients');


    Route::put('restore-client/{id}','ClientController@restore')->name('restore-client');

    Route::post('clients/suspend/{id}','ClientController@suspend')->name('clients.suspend');


    Route::post('clients/approve/{id}','ClientController@approve')->name('clients.approve');

    Route::post('clients/disapprove/{id}','ClientController@disapprove')->name('clients.disapprove');

    Route::resource('providers', 'ProviderController');


    Route::get('archive-providers','ProviderController@indexArchive')->name('archive-providers');


    Route::put('restore-provider/{id}','ProviderController@restore')->name('restore-provider');

    Route::post('providers/suspend/{id}','ProviderController@suspend')->name('providers.suspend');


    Route::post('providers/approve/{id}','ProviderController@approve')->name('providers.approve');

    Route::post('providers/disapprove/{id}','ProviderController@disapprove')->name('providers.disapprove');


    Route::resource('vendors', 'VendorController');


    Route::resource('orders', 'OrderController')->only(['index','show']);

    Route::get('order-confirmed/{id}','OrderController@confirmed')->name('order-confirmed');
    Route::get('order-shipping/{id}','OrderController@shipping')->name('order-shipping');
    Route::get('order-delivered/{id}','OrderController@delivered')->name('order-delivered');
    Route::get('order-finished/{id}','OrderController@finished')->name('order-finished');
    Route::get('order-cancelled/{id}','OrderController@cancelled')->name('order-cancelled');

    Route::resource('sliders', 'SliderController');
    Route::resource('items', 'ItemController');
    Route::resource('item-images', 'ItemImageController');
    Route::resource('promocodes', 'PromocodeController');

    Route::resource('pages', 'PageController');

    Route::resource('contacts', 'ContactUsController');

    Route::resource('cities', 'CityController');

    Route::resource('governorates', 'GovernorateController');

    Route::resource('roles', 'RoleController');

    Route::resource('system-options', 'OptionController')->only([
        'index', 'edit','update'
    ]);

    Route::resource('offers', 'OfferController');
    Route::resource('orders', 'OrderController');

    Route::resource('categories', 'CategoryController');
    Route::resource('sub-categories', 'SubCategoryController');
    Route::resource('equipments', 'EquipmentController');
    Route::resource('brands', 'BrandController');
    Route::resource('notifications', 'NotificationController');
    Route::resource('chat', 'ChatController');

    Route::resource('events', 'EventController');
    Route::resource('event-images', 'EventImageController');
    Route::resource('event-reservations', 'EventReservationController');


    Route::resource('job-categories', 'JobCategoryController');
    Route::resource('jobs', 'JobController');
    Route::resource('job-applications', 'JobApplicationController');

    Route::resource('rooms', 'RoomController');
    Route::resource('room-images', 'RoomImageController');

    Route::resource('solutions', 'SolutionController');
    Route::resource('solution-images', 'SolutionImageController');



    Route::resource('trainings', 'TrainingController');
    Route::resource('training-images', 'TrainingImageController');
    Route::resource('training-reservations', 'TrainingReservationController');

    Route::resource('speed-trainings', 'SpeedTrainingController');
    Route::resource('speed-training-images', 'SpeedTrainingImageController');
    Route::resource('speed-training-reservations', 'SpeedTrainingReservationController');


    Route::resource('faqs', 'FAQController');


});

Route::namespace('\App\Http\Controllers\Web')
    ->prefix(LaravelLocalization::setLocale())
    ->group(function () {

    // Home Page
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/page', [HomeController::class, 'page'])->name('page');

    // Social Login
    Route::controller(GoogleController::class)
        ->as('google.')
        ->group(function () {


            // Google
            Route::get('/auth/google/redirect', 'googleRedirect')->name('redirect');
            Route::get('/auth/google/callback', 'googleCallback')->name('callback');
        });

        // Social Login
        Route::controller(FacebookController::class)
            ->as('facebook.')
            ->group(function () {

                // Facebook
                Route::get('/auth/facebook/redirect', 'facebookRedirect')->name('redirect');
                Route::get('/auth/facebook/callback', 'facebookCallback')->name('callback');
            });


    // Start Account Route
    Route::controller(AccountController::class)
        ->prefix('account')
        ->as('account.')
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/update', 'update')->name('update');
            Route::get('/reset-password', 'resetPassword')->name('resetPassword');
        });
    // Start Account Route

    // Start My Orders Route
    Route::controller(MyOrdersController::class)
        ->prefix('my-order')
        ->as('my_order.')
        ->group(function (){
            Route::get('/', 'index')->name('index');
            Route::get('/create', 'create')->name('create');
            Route::post('/', 'store')->name('store');
            Route::get('/{id}', 'show')->name('show');
            Route::delete('/{id}', 'destroy')->name('delete');
        });
    // End My Orders Route

    // Start My Points Route
    Route::controller(MyPointController::class)
        ->prefix('my-points')
        ->as('my_point.')
        ->group(function() {
            Route::get('/', 'index')->name('index');
        });
    // End My Points Route

    // Start Favorite Route
    Route::controller(MyFavoriteController::class)
        ->prefix('my-favorite')
        ->as('my_favorite.')
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/favorite-store', 'store')->name('store');
            Route::get('/favorite-delete', 'destroy')->name('delete');
        });
    // End Favorite Route


    // Start Company Route
    Route::controller(CompanyController::class)
        ->prefix('company')
        ->as('company.')
        ->withoutMiddleware('auth')
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::post('/', 'store')->name('store');
        });
    // End Company Route

    // Start Category Route
    Route::controller(CategoriesController::class)
        ->prefix('categories')
        ->as('category.')
        ->withoutMiddleware('auth')
        ->group(function() {
            Route::get('/{id}', 'show')->name('show');
        });
    // End Category Route

    // Start Pages Controller
    Route::controller(PagesController::class)
        ->as('page.')
        ->withoutMiddleware('auth')
        ->group(function() {
            Route::get('terms', 'terms')->name('terms');
            Route::get('usage-policy', 'usagePolicy')->name('usagePolicy');
            Route::get('about-company', 'aboutCompany')->name('aboutCompany');
            Route::get('faqs', 'faqs')->name('faqs');
            Route::get('support', 'support')->name('support');
        });
    // End Pages Controller

    // Start Event Route
    Route::controller(EventsController::class)
        ->prefix('events')
        ->as('event.')
        ->group(function() {
            Route::get('/', 'index')->name('index')->withoutMiddleware(['auth']);
            Route::get('/event-reservation', 'reservation')->name('reservation');
            Route::get('/{id}', 'show')->name('show');
        });
    // End Event Route

    // Start Room Route
    Route::controller(RoomsController::class)
        ->prefix('rooms')
        ->as('room.')
        ->withoutMiddleware(['auth'])
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/{id}', 'show')->name('show');
        });
    // End Room Route

    // Start Training Route
    Route::controller(TrainingController::class)
        ->prefix('trainings')
        ->as('training.')
        ->withoutMiddleware(['auth'])
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/training-reservation', 'reservation')->name('reservation');
            Route::get('/{id}', 'show')->name('show');
        });
    // End Training Route

    // Start Speed For Training Route
    Route::controller(SpeedForTrainingController::class)
        ->prefix('speed_trainings')
        ->as('speed_training.')
        ->withoutMiddleware(['auth'])
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/reservation', 'reservation')->name('reservation');
            Route::get('/{id}', 'show')->name('show');
        });
    // End Speed For Training Route

    // Start Jobs Route
    Route::controller(JobsController::class)
        ->prefix('jobs')
        ->as('job.')
        ->withoutMiddleware(['auth'])
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::post('/', 'store')->name('store');
            Route::get('/get-job', 'getJob')->name('getJob');
        });
    // End Jobs Route

    // Start Address Route
    Route::controller(AddressController::class)
        ->prefix('addresses')
        ->as('address.')
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/save-address', 'store')->name('store');
            Route::get('/update-address', 'update')->name('update');
            Route::get('/delete-address', 'destroy')->name('delete');
            Route::get('/get-city', 'getCity')->name('getCity');
            Route::get('/get-address', 'getAddress')->name('getAddress');
        });
    // End Address Route

    // Start Search Controller
    Route::controller(SearchController::class)
        ->prefix('search-page')
        ->as('search.')
        ->group(function () {
            Route::get('/', 'search')->name('index');
        });
    // End Search Controller

    // Start Brand Controller
    Route::controller(BrandsController::class)
        ->prefix('brands')
        ->as('brand.')
        ->group(function() {
            Route::get('/{id}', 'show')->name('show');
        });
    // End Brand Controller

    // Start Cart Route
    Route::controller(CartController::class)
        ->prefix('carts')
        ->as('cart.')
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::post('/add-to-cart/{id}', 'store')->name('store');
            Route::get('/get-item', 'getItem')->name('getItem');
            Route::get('/loss-quantity', 'lossQuantity')->name('lossQuantity');
            Route::get('/delete-item', 'destroy')->name('delete');
            Route::get('/{id}', 'show')->name('show');
        });
    // End Cart Route

    // Start Item Route
    Route::controller(ItemController::class)
        ->prefix('items')
        ->as('item.')
        ->group(function() {
            Route::get('/discount', 'discount')->name('discount');
            Route::post('/download', 'download')->name('download');
            Route::get('/{id}', 'show')->name('show');
            Route::get('/compare/{id}', 'compare')->name('compare');
        });
    //End Item Route

    // Start Solution Route
    Route::controller(SolutionController::class)
        ->prefix('solutions')
        ->as('solution.')
        ->withoutMiddleware(['auth'])
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::get('/get-solution', 'getSolution')->name('getSolution');
        });
    // End Solution Route

    // Start Contact Us Route
    Route::controller(ContactUsController::class)
        ->prefix('contact-us')
        ->as('contact.')
        ->withoutMiddleware(['auth'])
        ->group(function() {
            Route::get('/', 'store')->name('store');
        });
    // End Contact Us Route

    // Start Payment Route
    Route::controller(PaymentController::class)
        ->prefix('payment')
        ->as('payment.')
        ->group(function() {
            Route::get('/paymob/{id}', 'credit')->name('create');
            Route::get('/callback', 'callback')->name('callback');
        });
    // End Payment Route

    // Start Chat Route
    Route::controller(ChatController::class)
        ->prefix('chat')
        ->as('chat.')
        ->group(function() {
            Route::get('/', 'store')->name('store');
        });
    // End Chat Route

    // Rate Controller
    Route::get('/rate/store', [RateController::class, 'store'])->name('rate.store');

    // Route Coupon
    Route::get('/set-coupon', [CouponController::class, 'store'])->name('coupon.store');

    // Success Payment Page
    Route::get('/success-page', function() {
        return view('web.payment.index');
    })->name('success-page');

});

