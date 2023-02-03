<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\CodeConfirmRequest;
use App\Http\Requests\ForgetPasswordRequest;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\NewPasswordRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Requests\SocialRequest;
use App\Http\Resources\UserResource;
use App\Models\Token;
use App\Models\User;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    use ApiResponse;
    public function login(LoginRequest $request)
    {
        $sanitized = $request->validated();

        if ( Auth::attempt($sanitized) ) {
            $AuthedUser = Auth::user();
            $user = Auth::user();
            if (Auth::user()->status == User::STATUS_SUSPEND){
                return $this->unauthorizedApiResponse([],__("Please contact administration on " . option('phone')));
            }
            if (Auth::user()->status != 'active'){
                $user->sms_code = 123456;
                $user->save();
                return $this->unauthorizedApiResponse(['sms_code' => $user->sms_code],__("Your account need to verify mobile"));
            }

            $token =$this->generateToken($AuthedUser);
            $AuthedUser->api_token = $token->plainTextToken;
            $AuthedUser->save();
            return $this->okApiResponse(new UserResource($AuthedUser),__("User information"));

        }
        return $this->badRequestApiResponse(['information'=>0],__('Please check you information'));
    }
    public function socialLogin(SocialRequest $request){
        $column = $request->type.'_token';

        $user = User::where($column,$request->token)->first();
        if ($user){
            return $this->okApiResponse(new UserResource($user),__("User information"));
        }else{
            $requests = $request->except(['type','token']);
            $requests[$column] = $request->token;
            $requests['password'] = Hash::make($request->token);
            $requests['main_role'] = 'client';
            $requests['status'] = 'new';
            $user = User::create($requests);
            $token =$this->generateToken($user);
            $user->api_token = $token->plainTextToken;
            $user->save();
            return $this->okApiResponse(new UserResource($user),__("User information"));

        }

    }
    public function register(RegisterRequest $request)
    {
        //return '123';
        $requests = $request->all();
        $requests['main_role'] = 'client';
        $requests['status'] = 'new';


        $requests['password']  =Hash::make($request->password);
        if ($request->has('image') && $request->image != null){
            $requests['image'] = $this->saveImage($request->image);
            $request->files->remove('image');
        }

        $user = User::create($requests);

        $user->sms_code = rand(111111,999999);
        //$user->sms_code = 123456;

        $token =$this->generateToken($user);
        $user->api_token = $token->plainTextToken;
        $user->save();
        twilioSMS($user->mobile,'Your activation code is : '.$user->sms_code);
        //new SMS($user->mobile,'Your activation code is : '.$user->sms_code);
//        return $this->okApiResponse(new UserResource($user),__("User information"));
        return $this->createdApiResponse(['sms_code' => $user->sms_code],__("Check your mobile"));
    }

    public function CompanyRegister(RegisterRequest $request)
    {
        //return '123';
        $requests = $request->all();
        $requests['main_role'] = User::ROLE_SERVICE_PROVIDER;
        $requests['status'] = 'new';


        $requests['password']  =Hash::make($request->password);

        if ($request->has('image') && $request->image != null){
            $requests['image'] = $this->saveImage($request->image);
            $request->files->remove('image');
        }

        if ($request->has('company_tax_image') && $request->company_tax_image != null){
            $requests['company_tax_image'] = $this->saveImage($request->company_tax_image);
            $request->files->remove('company_tax_image');
        }

        if ($request->has('company_commercial_record_image') && $request->company_commercial_record_image != null){
            $requests['company_commercial_record_image'] = $this->saveImage($request->company_commercial_record_image);
            $request->files->remove('company_commercial_record_image');
        }

        $user = User::create($requests);

//        $user->sms_code = rand(111111,999999);
        //$user->sms_code = 123456;

//        $token =$this->generateToken($user);
//        $user->api_token = $token->plainTextToken;
//        $user->save();
//        twilioSMS($user->mobile,'Your activation code is : '.$user->sms_code);
        //new SMS($user->mobile,'Your activation code is : '.$user->sms_code);
//        return $this->okApiResponse(new UserResource($user),__("User information"));
        return $this->createdApiResponse([],__("Created"));
    }

    public function forgetPassword(ForgetPasswordRequest $request)
    {

        $user = User::where('mobile',request('mobile'))->first();
        if (is_null($user)) {
            return $this->notFoundApiResponse([],__('User not found'));
        }
        $user->sms_code = rand(111111,999999);
        //$user->sms_code = 123456;
        $user->save();
        twilioSMS($user->mobile,'Your activation code is : '.$user->sms_code);
        return $this->okApiResponse(['sms_code' => $user->sms_code],__("Check your mobile"));

    }

    public function codeConfirmSMS(CodeConfirmRequest $request)
    {
        $user = User::where('mobile',$request->mobile)->first();
        if (is_null($user)) {
            return $this->notFoundApiResponse([],__('User not found'));
        }
        if($user->sms_code != $request->sms_code) {
            return $this->badRequestApiResponse(['sms_code invalid'],__('The code is not valid.'));

        }
        $token =$this->generateToken($user);
        $user->api_token        = $token->plainTextToken;
        //$user->sms_code   = rand(111111,999999);
        $user->status = 'active';
        $user->save();
        return $this->okApiResponse(new UserResource($user),__("User information"));

    }


    public function codeConfirmNewMobileSMS(CodeConfirmRequest $request)
    {
        $user = User::where('new_mobile',$request->mobile)->first();

        if (is_null($user)) {
            return $this->notFoundApiResponse([],__('User not found'));
        }

        if($user->sms_code != $request->sms_code) {
            return $this->badRequestApiResponse(['sms_code invalid'],__('The code is not valid.'));

        }
        $token =$this->generateToken($user);
        $user->api_token        = $token->plainTextToken;
        //$user->sms_code   = rand(111111,999999);
        $user->status = 'active';
        $user->mobile = $user->new_mobile;
        $user->new_mobile = null;
        $user->save();
        return $this->okApiResponse(new UserResource($user),__("User information"));

    }
    public function newPassword(NewPasswordRequest $request)
    {
        $user = User::where('mobile',request('mobile'))->first();
        if (is_null($user)) {
            return $this->notFoundApiResponse([],__('User not found'));
        }
        if($user->sms_code != request('sms_code')) {
            return $this->badRequestApiResponse(['sms_code invalid'],__('The code is not valid.'));

        }
        $requests = $request->all();
        $requests['password'] = Hash::make($request->password);
        $user->update(['password'=>$requests['password']]);
        return $this->okApiResponse(new UserResource($user),__("User information"));

    }

    public function newPhone(NewPhoneRequest $request)
    {
        $user = User::where('mobile',request('old_mobile'))->first();
        if (is_null($user)) {
            return Api::setStatusError()
                ->setMessage(__('User not found'))
                ->build();
        }
        if($user->sms_code != request('code')) {
            return Api::setStatusError()
                ->setMessage(__('The code is not valid.'))
                ->build();
        }
        $requests = $request->all();
        $requests['mobile'] = request('mobile');
        $user->update(['mobile'=>$requests['mobile']]);
        return Api::setStatusOk()
            ->setMessage(__("User information"))
            ->setData(new UserResources($user))
            ->build();
    }

    private function generateToken($user)
    {
        $user->tokens()->delete();
        return $user->createToken("Mobile:token");
    }

    public function testFCM(Request $request){
        $tokens = Token::all()->pluck('token')->toArray();

            $firebase = firebase_chat_notification($request->title ?? 'title',$request->message ?? 'message',$tokens,'FLUTTER_NOTIFICATION_CLICK',[
                'title'=>$request->title ?? 'title',
                'body'=>$request->message ?? 'message',
                'click_action'=>'FLUTTER_NOTIFICATION_CLICK'
            ]);
        return $firebase;
    }

    public function testSMS(Request $request){

//        $SMS = new \Tasawk\SMS\SMS($user->mobile ?? '', __('Confirmation code is :CODE', ['CODE' => $user->sms_code]));
        $SMS = new \Tasawk\SMS\SMS($request->mobile ?? '', $request->message);
        return 'Done';
    }

    function saveImage($file, $folder = '/')
    {
        request()->files->remove('link');

        $fileName = time() . rand(10,99).$file->getClientOriginalName();
        $dest = public_path('/uploads/' . $folder);
        $file->move($dest, $fileName);

        $uploaded_file = 'uploads/' . $folder . '/' . $fileName;
        return $uploaded_file;
    }

    public function resendCode(ForgetPasswordRequest $request)
    {

        $user = User::where('mobile',request('mobile'))->first();
        if (is_null($user)) {
            return $this->notFoundApiResponse([],__('User not found'));
        }
        $user->sms_code = rand(111111,999999);
        //$user->sms_code = 123456;
        $user->save();
        twilioSMS($user->mobile,'Your activation code is : '.$user->sms_code);
        return $this->okApiResponse(['sms_code' => $user->sms_code],__("Check your mobile"));

    }

    public function wael(){
        return auth()->user();
    }

    public function logout()
    {
        // Revoke a specific user token
        Auth::user()->currentAccessToken()->delete();
        return $this->okApiResponse([],__("Logged out successfully"));
    }

}
