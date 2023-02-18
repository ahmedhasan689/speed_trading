<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function terms(): Application|Factory|View
    {
        return view('web.pages.terms');
    }

    public function usagePolicy()
    {
        return view('web.pages.usage_policy');
    }

    public function aboutCompany()
    {
        return view('web.pages.about-company');
    }

    public function faqs()
    {
        return view('web.pages.faqs');
    }

    public function support()
    {
        return view('web.pages.support');
    }
}
