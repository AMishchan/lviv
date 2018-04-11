<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <title>{{ config('app.name', 'Laravel') }}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta property="og:title" content="">
    <meta property="og:image" content="{{asset('/build/images/og.jpg')}}">
    <meta property="og:description" content="">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/png" href="{{asset('favicon/favicon.png')}}">
    <link rel="stylesheet" href="{{asset('font-awesome-4.7.0/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('/css/main.css')}}?t=<?php echo(microtime(true)); ?>">
    <link rel="stylesheet" href="{{asset('/css/landing.css')}}?t=<?php echo(microtime(true)); ?>">
    <link rel="stylesheet" href="{{asset('/css/calendar.css')}}?t=<?php echo(microtime(true)); ?>">
    <link href="{{ asset('/css/header-menu.css')}}?t=<?php echo(microtime(true)); ?>" rel="stylesheet">
    <script defer src="{{asset('/libs/jquery/jquery-3.3.1.min.js')}}"></script>
</head>
<header class="header header--main">
    <div class="container">
        <div class="row-flex row-flex--between row-flex--middle">
            <div class="col visible-sm visible-xs">
                <button class="btn-menu visible-xs-inline-block visible-sm-inline-block"><span></span></button>
            </div>
            <div class="col">
                <div class="row-flex row-flex--middle">
                    <div class="col-md-5">
                        <div class="header__logo">
                            <a href="/"><img src="{{asset('images/lviv-logo-sprite.png')}}" alt=""></a>
                        </div>
                    </div>
                    <div class="col p-0 px-onehalf-md">
                        <nav class="header__nav">
                            <ul class="row-flex">
                                {{--output all published categories--}}
                                @foreach($data['categories'] as $category)
                                    <li><a href="#" class="nav-link" data-menu="{{$category['template']}}">{{$category['title']}}</a></li>
                                @endforeach
                                <li><a href="#" class="nav-link visible-xs visible-sm"
                                       data-menu="languages">Languages</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col">
                <a href="#" class="nav-link" data-menu="search">
                    <i class="fa header-search fa-search" aria-hidden="true"></i>
                    <span class="hidden-sm hidden-xs"></span></a>
                <div class="dropdown header__lang hidden-xs hidden-sm">
                    <button class="dropdown-toggle" type="button" data-toggle="dropdown">{{$data['locale']}}</button>
                    <ul class="dropdown-menu dropdown-menu-right">
                        @foreach($data['languages'] as $language)
                            <li><a href="/setlang/{{$language->code}}">{{$language->display_name}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>