<?php

use App\Http\Controllers\Guest\HomeController;
use App\Http\Controllers\Guest\OfferController;
use Illuminate\Support\Facades\Route;

Route::resource('/', HomeController::class);
Route::get('/offers', [OfferController::class, 'index'])->name('offers.index');
Route::get('/offer/{slug}', [OfferController::class, 'show'])->name('offers.show');
