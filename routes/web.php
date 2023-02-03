<?php

use App\Http\Controllers\Web\AccountController;
use App\Http\Controllers\Web\HomeController;
use Illuminate\Support\Facades\Route;

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


Route::name('dashboard.')->namespace('App\Http\Controllers\Dashboard')->middleware(['language', 'auth'])->prefix('dashboard')->group(function () {

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

Route::namespace('\App\Http\Controllers\Web')->group(function () {

    // Home Page
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/page', [HomeController::class, 'page'])->name('page');

//    // Social Login
//    Route::controller(SocialLoginController::class)
//        ->as('social_login.')
//        ->group(function () {
//
//            // Facebook
//            Route::get('/login/facebook', 'facebook')->name('facebook');
//            Route::get('/login/facebook/callback', 'facebookCallback')->name('facebook.callback');
//
//            // Google
//            Route::get('/login/google', 'google')->name('google');
//            Route::get('/login/google/callback', 'googleCallback')->name('google.callback');
//        });

    Route::controller(AccountController::class)
        ->prefix('account')
        ->as('account.')
        ->group(function() {
            Route::get('/', 'index')->name('index');
            Route::put('/', 'update')->name('update');
            Route::put('/reset-password', 'resetPassword')->name('resetPassword');
        });
});

