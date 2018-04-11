<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Session;
use App\Language;
use App\Http\Controllers\MenuController ;

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
            //TODO make $locale = Session::get('locale'); and add "_" - important!
            $locale = '';
            $languages = Language::where('status', 1)->get();
            $categories = MenuController::head_elements_select($locale);
            foreach ($categories as &$category)
            {
                if (MenuController::childSelect($category['id'], $category['parent_id'])) {
                    $left_sidebar_menus = MenuController::head_elements_select($locale, $category['id']);
                    $category['title'] = $category["title$locale"];
                    $category['left_sidebar_menu'] = $left_sidebar_menus;
                    $category['childrens'] = true;
                    foreach ($category['left_sidebar_menu'] as &$left_sidebar_menu)
                    {
                        if (MenuController::childSelect($category['id'], $category['parent_id'])){
                            $left_sidebar_menu['left_sidebar_droopdown'] = MenuController::head_elements_select($locale, $left_sidebar_menu['id']);
                            $left_sidebar_menu['title'] = $left_sidebar_menu["title$locale"];
                            $left_sidebar_menu['childrens'] = true;
                            foreach ($left_sidebar_menu['left_sidebar_droopdown'] as &$left_sidebar_menu_droopdown)
                            {
                                $left_sidebar_menu_droopdown['title'] = $left_sidebar_menu_droopdown["title$locale"];
                            }

                        }else{
                            $left_sidebar_menu['left_sidebar_droopdown'] = false;
                            $left_sidebar_menu['title'] = $left_sidebar_menu["title$locale"];
                        }
                    }
                } else {
                    $category['left_sidebar_menu'] = false;
                    $category['title'] = $category["title$locale"];
                }
            }
         //   dd($categories);
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
