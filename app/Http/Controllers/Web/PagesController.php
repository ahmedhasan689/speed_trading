<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\ChatChannel;
use App\Models\ChatMessage;
use App\Models\Page;
use Appstract\Options\Option;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PagesController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function terms(): Application|Factory|View
    {
        $text = Page::query()->where('title', 'terms')->first();
        return view('web.pages.terms', compact('text'));
    }

    public function usagePolicy()
    {
        $text = Page::query()->where('title', 'policy')->first();
        return view('web.pages.usage_policy', compact('text'));
    }

    public function aboutCompany()
    {
        $text = Page::query()->where('title', 'about us')->first();
        $options = Option::query()->get();

        return view('web.pages.about-company', compact('text', 'options'));
    }

    public function faqs()
    {
        $text = Page::query()->where('title', 'faq')->first();

        return view('web.pages.faqs', compact('text'));
    }

    public function support()
    {

        $channel = ChatChannel::where('user_id', Auth::id())->first();

        $messages = null;

        if( !$channel ){
            $channel = ChatChannel::create([
                'admin_id' => 1,
                'user_id' => Auth::id(),
            ]);
        }else{
            $messages = $channel->messages;
        }

        return view('web.pages.support', compact('messages', 'channel'));
    }
}
