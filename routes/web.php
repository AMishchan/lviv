<?php

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



Auth::routes();

Route::group(['prefix' => 'owner','middleware' => ['auth']], function (){
    Route::get('/','OwnerController@owner')->name('owner');
    Route::post('/store','OwnerController@store')->name('owner');
});
Route::group(['middleware' => ['locale']], function () {
    Route::get('/', 'MainpageController@index');
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/now',function () {return view('now');})->name('now');
    Route::get('/now/page-news',function () {return view('now.page-news');})->name('page-news');
    Route::get('/now/page-news/single-news',function () {return view('single.news');})->name('single-news');
    Route::get('/now/lviv-city-card',function () {return view('now.lviv-city-card');})->name('lviv-city-card');
    Route::get('/your-lviv/food-and-drinks',function () {return view('templates.sub-section');})->name('your-lviv');
    Route::get('/planning',function () {return view('planning');})->name('planning');
    Route::get('/business',function () {return view('business');})->name('business');
    Route::get('/your-lviv',function () {return view('your-lviv');})->name('your-lviv');
    Route::get('/events',function () {return view('events');})->name('events');
    Route::get('/event',function () {return view('single.event');})->name('event');

    Route::get('/setlang/{lang}', 'LocaleController@index')->name('setlang');
    Route::group(['prefix' => 'admin'], function () {
        Voyager::routes();
    });
});


