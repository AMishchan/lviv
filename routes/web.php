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


    Route::get('/now', function () {
        return view('now');
    })->name('now');
    Route::get('/now/lviv-city-card', function () {
        return view('now.lviv-city-card');
    })->name('lviv-city-card');
    Route::get('/now/page-news', function () {
        $locale = Session::get('locale');
        $posts = App\Post::all();
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Свіжі новини', '')->firstOrFail();
        return view('now.page-news', compact('posts','page','pages','locale'));
    })->name('page-news');
    Route::get('/now/page-news/post/{slug}', function ($slug) {
        $locale = Session::get('locale');
        $posts = App\Post::all();
        $post = App\Post::where('slug', '=', $slug)->firstOrFail();
        return view('single.news', compact('post','posts','locale'));
    })->name('single.news');


    Route::get('/tur', function () {
        $locale = Session::get('locale');

        $gids = App\Gid::all();
        $excursions = App\Excursion::all();
        return view('tur', compact('gids','excursions','locale'));
    })->name('tur');
    Route::get('/tur/excursions/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $excursions = App\Excursion::all();
        $excursion = App\Excursion::where('slug','=',$slug1, '')->firstOrFail();
        return view('excursions', compact('excursion','excursions','locale'));
    })->name('excursion');
    Route::get('/tur/gid/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $gid = App\Gid::where('slug','=',$slug1)->firstOrFail();
        $excursions = App\Excursion::all();
        return view('gid', compact('gid','excursions','locale'));
    })->name('gid');

    Route::get('/gids', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Гіди', '')->firstOrFail();
        $gids = App\Gid::all();
        return view('gids', compact('gids','locale','pages','page'));
    })->name('gids');
    Route::get('/gids/gid/{slug}', function ($slug) {
        $locale = Session::get('locale');

        $gid = App\Gid::where('slug','=',$slug)->firstOrFail();
        $excursions = App\Excursion::all();
//        TODO тут
//        orderBy('id', 'DESC')->first();
        return view('gid', compact('gid','excursions','locale'));
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
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Музеї', '')->firstOrFail();
        $museums = App\Museum::all();
        return view('museums', compact('museums','locale','pages','page'));
    })->name('museums');
    Route::get('/museums/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $museum = App\Museum::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.museum', compact('museum','locale'));
    })->name('museum');

    Route::get('/parks', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Парки', '')->firstOrFail();
        $parks = App\Park::all();
        return view('parks', compact('parks','locale','pages','page'));
    })->name('parks');
    Route::get('/parks/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $park = App\Park::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.park', compact('park','locale'));
    })->name('park');

    Route::get('/memories', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page = TCG\Voyager\Models\Page::where('status','=','Памʼятки', '')->firstOrFail();
        $memories = App\Memory::all();
        return view('memories', compact('memories','locale','pages','page'));
    })->name('memories');
    Route::get('/memories/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $memory = App\Memory::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.memory', compact('memory','locale'));
    })->name('memory');

    Route::get('/around_lviv', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Навколо Львова', '')->firstOrFail();
        $arounds = App\AroundLviv::all();
        return view('around_lvivs', compact('arounds','locale','pages','page'));
    })->name('around_lvivs');
    Route::get('/around_lviv/{slug}', function ($slug) {
        $locale = Session::get('locale');

        $around = App\AroundLviv::where('slug','=',$slug, '')->firstOrFail();
        return view('single.around_lviv', compact('around','locale'));
    })->name('around_lviv');

    Route::get('/public-places', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Громадські місця', '')->firstOrFail();
        $places = App\PublicPlace::all();
        return view('public_places', compact('places','locale','pages','page'));
    })->name('public-places');
    Route::get('/public-places/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $place = App\PublicPlace::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.public_place', compact('place','locale'));
    })->name('public-place');

    Route::get('/teatrs', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Театри', '')->firstOrFail();
        $teatrs = App\Teatr::all();
        return view('teatrs', compact('teatrs','locale','pages','page'));
    })->name('teatrs');
    Route::get('/teatrs/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $teatr = App\Teatr::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.teatr', compact('teatr','locale'));
    })->name('teatr');

    Route::get('/attractions', function () {
        $locale = Session::get('locale');
        $pages =TCG\Voyager\Models\Page::all();
        $page =TCG\Voyager\Models\Page::where('status','=','Аттракції', '')->firstOrFail();
        $attractions = App\Attraction::all();
        return view('attractions', compact('attractions','locale','pages','page'));
    })->name('teatrs');
    Route::get('/attractions/{slug}', function ($slug1) {
        $locale = Session::get('locale');

        $attraction = App\Attraction::where('slug','=',$slug1, '')->firstOrFail();
        return view('single.attraction', compact('attraction','locale'));
    })->name('teatr');

    Route::get('/setlang/{lang}', 'LocaleController@index')->name('setlang');
    Route::group(['prefix' => 'admin'], function () {


        Voyager::routes();

    });

});






