<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\ProfileController;
use App\Http\Controllers\Api\V1\OrderController;
use App\Http\Controllers\Api\V1\OfferController;
use App\Http\Controllers\Api\V1\NationalityController;
use App\Http\Controllers\Api\V1\CityController;
use App\Http\Controllers\Api\V1\BrandController;
use App\Http\Controllers\Api\V1\StoreController;
use App\Http\Controllers\Api\V1\ContactUsController;
use App\Http\Controllers\Api\V1\HomeController;
use App\Http\Controllers\Api\V1\NotificationController;
use App\Http\Controllers\Api\V1\ReportController;
use App\Http\Controllers\Api\V1\CategoryController;
use App\Http\Controllers\Api\V1\ChatController;
use App\Http\Controllers\Api\V1\AddressController;
use App\Http\Controllers\Api\V1\ItemController;
use App\Http\Controllers\Api\V1\SpeedTrainingController;
use App\Http\Controllers\Api\V1\TrainingController;
use App\Http\Controllers\Api\V1\EventController;
use App\Http\Controllers\Api\V1\RoomController;
use App\Http\Controllers\Api\V1\SolutionController;
use App\Http\Controllers\Api\V1\CartController;
use App\Http\Controllers\Api\V1\JobController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
class apiResponse {
    use \App\Traits\ApiResponse;
}
Route::prefix('v1')->middleware('lang')->group(function (){
    Route::post('login',[AuthController::class,'login']);
    Route::post('register',[AuthController::class,'register']);

    Route::post('social-login',[AuthController::class,'socialLogin']);

    Route::post('company-register',[AuthController::class,'CompanyRegister']);
    Route::post('forget-password',[AuthController::class,'forgetPassword']);
    Route::post('resend-code',[AuthController::class,'resendCode']);
    Route::post('code-confirm',[AuthController::class,'codeConfirmSMS']);
    Route::post('code-confirm-new-mobile',[AuthController::class,'codeConfirmNewMobileSMS']);
    Route::post('new-password',[AuthController::class,'newPassword']);



    Route::get('wael',[AuthController::class,'wael']);
    Route::get('governorates',[CityController::class,'governorates']);
    Route::get('cities/{id}',[CityController::class,'cities']);
    Route::get('brands',[BrandController::class,'index']);



    Route::get('settings',[HomeController::class,'settings']);

    Route::get('nationalities',[NationalityController::class,'index']);

    Route::get('about-us',[HomeController::class,'aboutUs']);
    Route::get('terms',[HomeController::class,'terms']);
    Route::get('policy',[HomeController::class,'policy']);

    Route::get('faq',[HomeController::class,'faq']);
    Route::post('contact-us',[ContactUsController::class,'store']);

    Route::get('main-categories',[CategoryController::class,'index']);
    Route::get('sub-categories/{id}',[CategoryController::class,'subCategories']);

    Route::get('items',[ItemController::class,'index']);
    Route::get('item/{id}',[ItemController::class,'show']);
    Route::get('item-rates/{id}',[ItemController::class,'rate']);


    Route::get('speed-trainings',[SpeedTrainingController::class,'index']);
    Route::get('speed-training/{id}',[SpeedTrainingController::class,'show']);

    Route::get('trainings',[TrainingController::class,'index']);
    Route::get('training/{id}',[TrainingController::class,'show']);

    Route::get('events',[EventController::class,'index']);
    Route::get('event/{id}',[EventController::class,'show']);

    Route::get('rooms',[RoomController::class,'index']);
    Route::get('room/{id}',[RoomController::class,'show']);

    Route::get('solutions',[SolutionController::class,'index']);
    Route::get('solution/{id}',[SolutionController::class,'show']);


    Route::get('slider',[HomeController::class,'slider']);
    Route::get('home',[HomeController::class,'index']);

    Route::get('compare/{id}',[OrderController::class,'compare']);


    Route::get('jobs',[JobController::class,'index']);
    Route::get('job/{id}',[JobController::class,'show']);
    Route::post('job-application',[JobController::class,'apply']);

    Route::middleware(['auth:sanctum','lang'])->group(function (){
        Route::get('logout',[AuthController::class,'logout']);



        Route::get('profile',[ProfileController::class,'index']);
        Route::post('profile',[ProfileController::class,'update']);
        Route::post('profile/update-password',[ProfileController::class,'updatePassword']);
        Route::get('delete-account',[ProfileController::class,'delete']);


        Route::get('my-points',[ProfileController::class,'myPoints']);




        Route::get('my-addresses',[AddressController::class,'index']);
        Route::post('add-address',[AddressController::class,'create']);
        Route::post('edit-address/{id}',[AddressController::class,'edit']);
        Route::post('delete-address/{id}',[AddressController::class,'delete']);



        Route::get('cart',[CartController::class,'index']);
        Route::get('add-to-cart/{id}',[CartController::class,'add']);
        Route::get('edit-cart-quantity',[CartController::class,'editQuantity']);
        Route::get('delete-cart-item/{id}',[CartController::class,'delete']);
        Route::get('cart-details',[CartController::class,'cartDetails']);
        Route::get('payment-order',[CartController::class,'pay']);




        Route::get('orders',[OrderController::class,'index']);
        Route::get('order/{id}',[OrderController::class,'show']);
        Route::get('my-orders',[OrderController::class,'myOrders']);
        Route::get('check-coupon',[OrderController::class,'coupon']);



        Route::get('orders/accept',[OrderController::class,'accept']);
        Route::get('orders/reject',[OrderController::class,'reject']);
        Route::post('send-sms',[OrderController::class,'SMS']);
        Route::post('seller-confirm',[OrderController::class,'sellerConfirm']);
        Route::post('client-confirm',[OrderController::class,'clientConfirm']);
        Route::post('rate_order',[OrderController::class,'rateOrder']);

        Route::get('stores',[StoreController::class,'index']);

        Route::get('availability',[ProfileController::class,'availability']);




        Route::get('stores',[StoreController::class,'index']);

        Route::post('stores',[StoreController::class,'store']);



        Route::get('profile/notification',[NotificationController::class,'index']);

        Route::get('profile/notification/change-status',[NotificationController::class,'changeStatus']);

        Route::get('profile/notification/delete',[NotificationController::class,'delete']);

        Route::get('profile/notification/delete-one/{id}',[NotificationController::class,'deleteOne']);


        Route::get('report',[ReportController::class,'index']);



        Route::post('orders',[OrderController::class,'store']);
        Route::get('my-orders',[OrderController::class,'myOrders']);
        Route::get('cancel-order/{id}',[OrderController::class,'cancel']);
        Route::get('price-order',[OrderController::class,'price']);
        Route::get('accept-price-order',[OrderController::class,'acceptPrice']);

        Route::get('finish-order',[OrderController::class,'finish']);



        Route::get('favourite-item/{id}',[ItemController::class,'favourite']);
        Route::get('my-favourites',[ItemController::class,'myFavourites']);
        Route::post('rate_item',[ItemController::class,'rateItem']);
        Route::post('rate_items',[ItemController::class,'rateItems']);

        Route::get('speed-training-reservation/{id}',[SpeedTrainingController::class,'reserve']);
        Route::get('training-reservation/{id}',[TrainingController::class,'reserve']);
        Route::get('event-reservation/{id}',[EventController::class,'reserve']);




        //offers provider
        Route::post('offers',[OfferController::class,'store']);
        Route::post('edit-offer',[OfferController::class,'update']);
        Route::get('my-offers',[OfferController::class,'myOffers']);
        Route::get('delete-offer/{id}',[OfferController::class,'delete']);
        Route::get('offer-switch-seen/{id}',[OfferController::class,'switchSeen']);

        Route::get('favourite-offer/{id}',[OfferController::class,'favourite']);
        Route::post('comment-offer/{id}',[OfferController::class,'comment']);

        // =============== Start Chat =============== //
        Route::get('chat/list',[ChatController::class,'index']);
        Route::get('chat/messages',[ChatController::class,'messages']);
        Route::get('chat/channel',[ChatController::class,'getChannel']);
        Route::post('chat/messages/send',[ChatController::class,'sendMessage']);
        // =============== End Chat =============== //


        Route::get('home-report',[HomeController::class,'homeWallet']);
        Route::get('wallet',[HomeController::class,'wallet']);
        Route::get('wallet-report',[HomeController::class,'walletReport']);
        Route::get('wallet-report-provider',[HomeController::class,'walletReportProvider']);
        Route::post('test-fcm',[AuthController::class,'testFCM']);
        Route::post('profile/notification/refresh-notification-token',[NotificationController::class,'refreshToken']);


    });
    Route::post('stores/status/{id}',[StoreController::class,'status']);

    Route::get('search',[HomeController::class,'search']);




    Route::get('get_city_id',[ProfileController::class,'getCity']);




});

Route::get('make-payment/', function (Request $request) {

    // ############### 1- get token ###############

    $tokenResponse = \Illuminate\Support\Facades\Http::post('https://accept.paymob.com/api/auth/tokens', [
        'api_key' => getenv('PAYMOB_API_KEY'),
    ]);
    $token = $tokenResponse['token'];
//$token ="ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TWpJMk1qTTVMQ0psZUhBaU9qRTJOVGN3TWpFM01qY3NJbkJvWVhOb0lqb2lZV1UwWkRBeE1HRmlNVFpsWWpNME5qWTRNV1ZtT0dNeFkyVTRPR1pqWmpNeVptSXhPVFExTURrNE1EVmxNbUpqTURCaE9UTXpNREV5WmpSaVltUTNOeUo5LkZ2RkxVRlBtQVF1cjdYVTRJZWhzd0V2WXZhbWN1SXhzVUVGTFk0UWFnYmNHcHlvdVFjMGlqWjItYm16T3U3Y0JHX2h0ZURvbDkyNjB4bmZ4Y05NOWZR";
    // ############################################

    // ########### 2- Order Registration ##########
    $orderResponse = \Illuminate\Support\Facades\Http::post('https://accept.paymob.com/api/ecommerce/orders', [
        "auth_token"=>  $token,
        "delivery_needed"=> false,
        "amount_cents"=> (int) ($request->amount*100),
        "currency"=> "EGP",
        "merchant_order_id"=> $request->order_id,
        "items"=> [],
        ]);
    //return $orderResponse;
    $orderId = $orderResponse['id'];
//$orderId=55368955;

        // 3-Payment Key Request
    $paymentKeyResponse = \Illuminate\Support\Facades\Http::post('https://accept.paymob.com/api/acceptance/payment_keys', [
        "auth_token"=> $token,
        "amount_cents"=>(int) ($request->amount*100),
        "expiration"=> 3600,
        "order_id"=> $orderId,
        "billing_data"=> [
            "email"=> $request->email ?? 'speed@test.com',
            "first_name"=> $request->name,
            "last_name"=> $request->name,
            "phone_number"=> "+2".$request->mobile,
            "apartment"=> "NA",
            "floor"=> "NA",
            "street"=> "NA",
            "building"=> "NA",
            "shipping_method"=> "NA",
            "postal_code"=> "NA",
            "city"=> "NA",
            "country"=> "NA",
            "state"=> "NA"
        ],
        "currency"=> "EGP",
        "integration_id"=> 2331463,
        "lock_order_when_paid"=> false,
    ]);
//    return $paymentKeyResponse;
    $paymentToken = $paymentKeyResponse['token'];
//    return view('iframe',['url'=>"https://accept.paymobsolutions.com/api/acceptance/iframes/417408?payment_token=".$paymentToken]);
return "https://accept.paymobsolutions.com/api/acceptance/iframes/417408?payment_token=".$paymentToken;

    return redirect("https://accept.paymob.com/api/acceptance/iframe/417408",['payment_token'=>"N05qR0xqRnpHcGI5aXo1c1lHZFdvdz09X3luQ2ZsVGk5NFNNc21hcTZKcFZkV2c9PQ=="]);
})->name('make_payment');

Route::get('payment', function (Request $request) {
    //return $request->all();

    $order = \App\Models\Order::find($request->merchant_order_id);
    if ($request->success == 'true'){
        $order->payment_status = 1;
        $order->save();
        return redirect()->route('payment_status_redirect',['status'=>'success']);
        return 'success';
    }

    return redirect()->route('payment_status_redirect',['status'=>'error']);
    return 'error';
//    activity()->log($request->all());

})->name('payment_redirect');

Route::get('payment-status/{status}', function ($status) {
    return $status;
    //return $request->all();

    $order = \App\Models\Order::find($request->merchant_order_id);
    if ($request->success == 'true'){
        $order->payment_status = 1;
        $order->save();
        return 'success';
    }
    return 'error';
//    activity()->log($request->all());

})->name('payment_status_redirect');

Route::middleware(['auth:sanctum','lang'])->get('/user', function (Request $request) {
    return $request->user();
});
