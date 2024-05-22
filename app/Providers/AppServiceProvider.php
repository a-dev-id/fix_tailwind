<?php

namespace App\Providers;

use App\Models\Setting;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Eloquent\Model;
use Filament\Support\Facades\FilamentView;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        // parent::register();
        // FilamentView::registerRenderHook('panels::body.end', fn (): string => Blade::render("@vite('resources/js/app.js')"));
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Schema::defaultStringLength(191);
        Model::unguard();

        $instagram = Setting::where('status', 1)->where('id', '1')->first();
        $facebook = Setting::where('status', 1)->where('id', '2')->first();
        $twitter = Setting::where('status', 1)->where('id', '3')->first();
        $youtube = Setting::where('status', 1)->where('id', '4')->first();
        $phone = Setting::where('status', 1)->where('id', '5')->first();
        $address = Setting::where('status', 1)->where('id', '6')->first();
        $reservations_email = Setting::where('status', 1)->where('id', '7')->first();
        $media_email = Setting::where('status', 1)->where('id', '8')->first();
        $wa_link = Setting::where('status', 1)->where('id', '9')->first();
        $tripadvisor = Setting::where('status', 1)->where('id', '10')->first();
        $telegram = Setting::where('status', 1)->where('id', '11')->first();
        $booking_engine = Setting::where('status', 1)->where('id', '12')->first();
        $inquiry_header = Setting::where('status', 1)->where('id', '13')->first();
        $logo = Setting::where('status', 1)->where('id', '14')->first();

        View::share('instagram', $instagram);
        View::share('facebook', $facebook);
        View::share('twitter', $twitter);
        View::share('youtube', $youtube);
        View::share('phone', $phone);
        View::share('address', $address);
        View::share('reservations_email', $reservations_email);
        View::share('media_email', $media_email);
        View::share('wa_link', $wa_link);
        View::share('tripadvisor', $tripadvisor);
        View::share('telegram', $telegram);
        View::share('booking_engine', $booking_engine);
    }
}
