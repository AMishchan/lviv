@extends('layouts.front')
@section('content')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <div class="cover" style="background-image: url({{asset('images/news-cover.jpg')}});">
        <div class="container">
            <div class="cover__content">
                <div class="d-i-block">
                    <h1 class="cover__title">Typи</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <ul class="breadcrumbs">
            <li><a class="link link--blue" href="#"></a></li>
            <li>Гиды</li>
        </ul>
        <div class="mb-1">
            <a href="#" class="mr-half label label--tab label--big active">Усі</a>
            <a href="#" class="mr-half label label--tab label--big">Місто</a>
            <a href="#" class="mr-half label label--tab label--big">Мистецтво</a>
            <a href="#" class="mr-half label label--tab label--big">Політика</a>
        </div>
        <div class="row">
            @foreach($gids as $gid)
                <div class="col-md-3">
                    <a href="/tur/gids/{{ $gid->slug }}">
                        <img src="{{ Voyager::image( $gid->avatar ) }}" style="width:100%">
                        <span>{{ $gid->name }}</span>
                    </a>
                </div>
            @endforeach
        </div>
    <div class="container">
        <ul class="breadcrumbs">
             <li><a class="link link--blue" href="#"></a></li>
             <li>Екскурсії</li>
        </ul>
            <div class="mb-1">
                <a href="#" class="mr-half label label--tab label--big active">Усі</a>
                <a href="#" class="mr-half label label--tab label--big">Місто</a>
                <a href="#" class="mr-half label label--tab label--big">Мистецтво</a>
                <a href="#" class="mr-half label label--tab label--big">Політика</a>
            </div>
            <div class="row">
                @foreach($excursions as $excursion)
                    <div class="col-md-3">
                        <a href="/tur/excursions/{{ $excursion->slug }}">
                            <img src="{{ Voyager::image( $excursion->photo ) }}" style="width:100%">
                            <span>{{ $excursion->name }}</span>
                        </a>
                    </div>
                @endforeach
            </div>


    </div>


@endsection