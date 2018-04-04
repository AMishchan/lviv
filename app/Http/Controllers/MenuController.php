<?php

namespace App\Http\Controllers;
use App\Menu;

class MenuController extends Controller
{
    public static function head_elements_select($locale, $id = false)
    {
        $elements = Menu::select('id', "title_$locale", 'path', 'parent_id', 'children', 'template', 'data_menu')
            ->where('parent_id', $id)
            ->where('published', true)
            ->get()
            ->toArray();
        return $elements;
    }
}
