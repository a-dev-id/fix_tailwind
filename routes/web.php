<?php

use App\Livewire\Accommodations;
use App\Livewire\Experiences;
use Illuminate\Support\Facades\Route;
use App\Livewire\Home;
use App\Livewire\Honeymoon;
use App\Livewire\Offers;
use App\Livewire\Restaurant;
use App\Livewire\Spa;
use App\Livewire\Wedding;
use App\Livewire\Award;
use App\Livewire\PressRoom;

Route::get('/', Home::class)->name('index');
Route::get('/offers', Offers::class)->name('offers.index');
Route::get('/offer/{slug}', Offers::class)->name('offers.show');
Route::get('/accommodations', Accommodations::class)->name('accommodations.index');
Route::get('/accommodation/{slug}', Accommodations::class)->name('accommodations.show');
Route::get('/experiences', Experiences::class)->name('experiences.index');
Route::get('/restaurant', Restaurant::class)->name('restaurant.index');
Route::get('/spa', Spa::class)->name('spa.index');
Route::get('/honeymoon', Honeymoon::class)->name('honeymoon.index');
Route::get('/weddings', Wedding::class)->name('weddings.index');
Route::get('/awards', Award::class)->name('awards.index');
Route::get('/press-rooms', PressRoom::class)->name('press-rooms.index');
