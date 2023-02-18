<?php

namespace App\Providers;

use App\Models\Event;
use App\Models\Item;
use App\Models\Job;
use App\Models\Room;
use App\Models\Solution;
use App\Models\SpeedTraining;
use App\Models\Training;
use App\Models\User;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {


    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Paginator::useBootstrapFive();
        Paginator::useBootstrapFour();

        Relation::enforceMorphMap([
            'user'=>User::class,
            'event'=>Event::class,
            'item'=>Item::class,
            'job'=>Job::class,
            'room'=>Room::class,
            'solution'=>Solution::class,
            'speed training'=>SpeedTraining::class,
            'training'=>Training::class
        ]);
    }
}
