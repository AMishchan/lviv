<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
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
    Route::get('/admin/landings/sendtype', '\TCG\Voyager\Http\Controllers\VoyagerLandingController@getTypeTag');

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

    Route::get('/museums', function () {
        $museums = App\Museum::all();
        return view('museums', compact('museums'));
    })->name('museums');
    Route::get('/museums/{slug}', function ($slug1) {
        $museum = App\Museum::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.museum', compact('museum'));
    })->name('museum');

    Route::get('/parks', function () {
        $parks = App\Park::all();
        return view('parks', compact('parks'));
    })->name('parks');
    Route::get('/parks/{slug}', function ($slug1) {
        $park = App\Park::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.park', compact('park'));
    })->name('park');

    Route::get('/memories', function () {
        $memories = App\Memory::all();
        return view('memories', compact('memories'));
    })->name('memories');
    Route::get('/memories/{slug}', function ($slug1) {
        $memory = App\Memory::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.memory', compact('memory'));
    })->name('memory');

    Route::get('/around_lviv', function () {
        $arounds = App\AroundLviv::all();
        return view('around_lvivs', compact('arounds'));
    })->name('around_lvivs');
    Route::get('/around_lviv/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $around = App\AroundLviv::where('slug','=',$slug1, '')->firstOrFail()->get()->first();
        return view('single.around_lviv', compact('around','locale'));
    })->name('around_lviv');

    Route::get('/public-places', function () {
        $places = App\PublicPlace::all();
        return view('public_places', compact('places'));
    })->name('public-places');
    Route::get('/public-places/{slug}', function ($slug1) {
        $place = App\PublicPlace::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.public_place', compact('place'));
    })->name('public-place');

    Route::get('/teatrs', function () {
        $teatrs = App\Teatr::all();
        return view('teatrs', compact('teatrs'));
    })->name('teatrs');
    Route::get('/teatrs/{slug}', function ($slug1) {
        $teatr = App\Teatr::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.teatr', compact('teatr'));
    })->name('teatr');

    Route::get('/setlang/{lang}', 'LocaleController@index')->name('setlang');
    Route::group(['prefix' => 'admin'], function () {


        Voyager::routes();

    });

});






