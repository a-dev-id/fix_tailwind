<?php

use App\Livewire\Accommodation;
use App\Livewire\Dining;
use App\Livewire\Experiences;
use Illuminate\Support\Facades\Route;
use App\Livewire\Home;
use App\Livewire\Offers;

Route::get('/', Home::class)->name('index');
Route::get('/offers', Offers::class)->name('offers.index');
Route::get('/offer/{slug}', Offers::class)->name('offers.show');
Route::get('/accommodation', Accommodation::class)->name('accommodation.index');
Route::get('/dining', Dining::class)->name('dining.index');
Route::get('/experiences', Experiences::class)->name('experiences.index');
