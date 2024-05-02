<?php

use App\Livewire\Accommodations;
use App\Livewire\Dining;
use App\Livewire\Dinings;
use App\Livewire\Experiences;
use Illuminate\Support\Facades\Route;
use App\Livewire\Home;
use App\Livewire\Offers;

Route::get('/', Home::class)->name('index');
Route::get('/offers', Offers::class)->name('offers.index');
Route::get('/offer/{slug}', Offers::class)->name('offers.show');
Route::get('/accommodations', Accommodations::class)->name('accommodations.index');
Route::get('/accommodation/{slug}', Accommodations::class)->name('accommodations.show');
Route::get('/dinings', Dinings::class)->name('dinings.index');
Route::get('/experiences', Experiences::class)->name('experiences.index');
