@extends('layouts.front')
@section('content')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <div class="cover" style="background-image: url({{ Voyager::image( $gid->baner_photo ) }});">
        <img src="{{ Voyager::image( $gid->avatar ) }}">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Гід</div>
                            <h1 class="cover__title">{{ $gid->name }}</h1>
                            <ul class="breadcrumbs">
                                <a href="#" class="label">Що робити/</a>
                                <a href="#" class="label">Тури/</a>
                                <a href="#" class="label">Гіди/</a>
                                <a href="#" class="label">Пан Іван</a>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container ">
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span>
        <span class="reviews">73 відгуки</span>
        <a href="#">Залишити відгук</a>
        <ul class="string-list col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
            <li><a href="#" class="string">Детальніше</a></li>
            <li><a href="#" class="string">Екскурсії</a></li>
            <li><a href="#" class="string">Профіль</a></li>
        </ul>
    </div>
    <div class="container">
        <div class="mb-4">
            <div class="row">
                <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2"

                    <div class="text-secondary text-content">
                        <p class="mb-4">email: {{ $gid->email }}</p>
                        <p class="mb-4">тел: {{ $gid->number }}</p>
                    </div>


                    <div class="text-secondary text-content">
                        <p class="mb-4">{{ $gid->title }}</p>
                    </div>
                    <div class="text-secondary text-content">
                        <p class="mb-3">{!! $gid->post !!}</p>
                    </div>




                </div>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="container">
            <h2 class="section__title">Гиды</h2>

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
        </div>

    </section>
@endsection