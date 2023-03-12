<?php

function twilioSMS($number,$message)
{
    $receiverNumber = getenv('PHONE_PREFIX').$number;


    try {

        $account_sid = getenv("TWILIO_SID");
        $auth_token = getenv("TWILIO_TOKEN");
        $twilio_number = getenv("TWILIO_FROM");

        $client = new \Twilio\Rest\Client($account_sid, $auth_token);
        $client->messages->create($receiverNumber, [
            'from' => $twilio_number,
            'body' => $message
        ]);

        return['status'=>1,'message'=> __('SMS Sent Successfully.')];

    } catch (Exception $e) {
        return ['status'=>0,'message'=> "Error: ". $e->getMessage()];
    }
}


