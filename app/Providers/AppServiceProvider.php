<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
               $lang='ar';
               session()->put('lang',$lang);
                     

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
          

    }
}
