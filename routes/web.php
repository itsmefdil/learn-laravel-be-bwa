<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[App\http\Controllers\DashboardController::class, 'index'])->middleware('auth')->name('dashboard');


Auth::routes(['register' => false]);

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('/product', App\Http\Controllers\ProductController::class);
Route::resource('/product-gallery', App\Http\Controllers\ProductGalleryController::class);
