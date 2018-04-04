<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Session;
use App\Language;
use App\Http\Controllers\MenuController;

class MenuServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->mainMenu();
    }
    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
    public function mainMenu()
    {
        View::composer("layouts.front", function ($view) {
            $locale = Session::get('locale');
            $languages = Language::where('status', 1)->get();
            $categories = MenuController::head_elements_select($locale);
            foreach ($categories as &$category)
            {
                if ($category['children']) {
                    $left_sidebar_menus = MenuController::head_elements_select($locale, $category['id']);
                    $category['title'] = $category["title_$locale"];
                    $category['left_sidebar_menu'] = $left_sidebar_menus;
                    foreach ($category['left_sidebar_menu'] as &$left_sidebar_menu)
                    {
                        if ($left_sidebar_menu['children']){
                            $left_sidebar_menu['left_sidebar_droopdown'] = MenuController::head_elements_select($locale, $left_sidebar_menu['id']);
                            $left_sidebar_menu['title'] = $left_sidebar_menu["title_$locale"];

                            foreach ($left_sidebar_menu['left_sidebar_droopdown'] as &$left_sidebar_menu_droopdown)
                            {
                                $left_sidebar_menu_droopdown['title'] = $left_sidebar_menu_droopdown["title_$locale"];
                            }

                        }else{
                            $left_sidebar_menu['left_sidebar_droopdown'] = false;
                            $left_sidebar_menu['title'] = $left_sidebar_menu["title_$locale"];
                        }
                    }
                } else {
                    $category['left_sidebar_menu'] = false;
                    $category['title'] = $category["title_$locale"];
                }
            }
            $view->with('data',
                [
                    'categories' => $categories,
                    'languages' => $languages,
                    'locale' => $locale,
                    'locale_desc' => $languages
                ]);
        });
    }
}
