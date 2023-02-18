<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\ContactUs;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'mobile' => 'required|numeric',
            'title' => 'required',
            'message' => 'required',
        ]);

        ContactUs::create([
            'name' => $request->name,
            'mobile' => $request->mobile,
            'title' => $request->title,
            'message' => $request->message,
        ]);

        return response()->json([
            'success' => 'Done!',
        ]);
    }
}
