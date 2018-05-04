<?php
use Illuminate\Support\Facades\DB;
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


    Route::get('/now', function () {
        return view('now');
    })->name('now');
    Route::get('/now/lviv-city-card', function () {
        return view('now.lviv-city-card');
    })->name('lviv-city-card');
    Route::get('/now/page-news', function () {
        $posts = App\Post::all();
        return view('now.page-news', compact('posts'));
    })->name('page-news');
    Route::get('/now/page-news/post/{slug}', function ($slug) {
        $posts = App\Post::all();
        $post = App\Post::where('slug', '=', $slug)->firstOrFail();
        return view('single.news', compact('post','posts'));
    })->name('single.news');


    Route::get('/tur', function () {
        $gids = App\Gid::all();
        $excursions = App\Excursion::all();
        return view('tur', compact('gids','excursions'));
    })->name('tur');
    Route::get('/tur/excursions/{slug}', function ($slug1) {
        $excursions = App\Excursion::all();
        $excursion = App\Excursion::where('slug','=',$slug1, '')->firstOrFail();
        return view('excursions', compact('excursion','excursions'));
    })->name('excursion');
    Route::get('/tur/gid/{slug}', function ($slug1) {
        $gid = App\Gid::where('slug','=',$slug1)->firstOrFail();
        $excursions = App\Excursion::all();
        return view('gid', compact('gid','excursions'));
    })->name('gid');

    Route::get('/gids', function () {
        $gids = App\Gid::all();
        return view('gids', compact('gids'));
    })->name('gids');
    Route::get('/gids/gid/{slug}', function ($slug) {
        $gid = App\Gid::where('slug','=',$slug)->firstOrFail();
        $excursions = App\Excursion::all();
//        TODO тут
//        orderBy('id', 'DESC')->first();
        return view('gid', compact('gid','excursions'));
    })->name('gid');


    Route::get('/your-lviv/food-and-drinks', function () {
        return view('templates.sub-section');
    })->name('your-lviv');
    Route::get('/planning', function () {
        return view('planning');
    })->name('planning');
    Route::get('/business', function () {
        return view('business');
    })->name('business');
    Route::get('/your-lviv', function () {
        return view('your-lviv');
    })->name('your-lviv');

    Route::get('/events', function () {
        $developments = App\Development::all();
        return view('events',compact('developments'));
    })->name('events');
    Route::get('/event/{slug}', function ($slug) {
        $development = App\Development::where('slug','=',$slug)->firstOrFail();return view('single.event',compact('development'));
    })->name('event');

    Route::get('/your-lviv/food-and-drinks/food-place',function () {return view('single.place');})->name('food-place');



    Route::get('/setlang/{lang}', 'LocaleController@index')->name('setlang');
    Route::group(['prefix' => 'admin'], function () {


        Voyager::routes();

    });

});






