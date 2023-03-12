<?php

namespace App\View\Components;

use App\Models\Brand;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Item;
use App\Models\Notification;
use Appstract\Options\Option;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\Component;

class FrontLayout extends Component
{

    public $title;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($title)
    {
        $this->title = $title;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $categories = Category::query()->with(['subs'])->where('upper_id',null)->get();
        $brands = Brand::query()->get();
        $options = Option::query()->get();

        $notifications = Notification::query()->where('notifiable_id', Auth::id())->get();
        $cart = Cart::query()->where('user_id', Auth::id())->count();

        return view('layouts.front_layout', compact('categories', 'brands', 'options', 'notifications', 'cart'));
    }
}
