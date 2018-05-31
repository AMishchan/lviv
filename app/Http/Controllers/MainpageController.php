<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Language;
use App\Slider;

class MainpageController extends Controller
{
    function index(){
        $sliderImages = Slider::all()->where('slider_name', 'Головний слайдер');
//dd($sliderImages);

        return view('welcome' , compact('sliderImages'));

    }
}
