<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\MenuItem;

class MenuController extends Controller
{
    public static function head_elements_select($locale, $id = NULL)
    {
        $elements = MenuItem::select('id', 'menu_id', "title_$locale", 'url', 'icon_class', 'color', 'parent_id', 'order', 'route', 'template')
            ->where('parent_id', $id)
            ->whereNotIn('menu_id', ['1'])
            ->orderBy('order','ASC')
            ->get()
            ->toArray();
        return $elements;
    }

    public static function childSelect($id, $parent_id)
    {
        if (MenuItem::where($id, $parent_id)) {
            return true;
        }

    }
}
//TODO in voyager admin.menus заллушки _uk delete