@extends('layouts.front')
@section('content')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <div class="cover" style="background-image: url({{ Voyager::image( $gid->baner_photo ) }});">
        <img class="mb-4" src="{{ Voyager::image( $gid->avatar ) }}">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Гід</div>
                            <h1 class="cover__title">{{ $gid->name }}</h1>
                            <ul class="breadcrumbs">
                                <a href="#" class="label">Що робити/</a>
                                <a href="{{asset('/tur')}}" class="label">Тури/</a>
                                <a href="{{asset('/gids')}}" class="label">Гіди/</a>
                                <a href="#" class="label">Пан Іван</a>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-2 left-bar">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <p class="reviews">73 відгуки</p>
                <a href="#" class="review">Залишити відгук</a>
            </div>
            <div class="col-md-10">
                <ul class="string-list">
                    <li><a href="#" class="string">Детальніше</a></li>
                    <li><a href="#" class="string">Екскурсії</a></li>
                    <li><a href="#" class="string">Профіль</a></li>
                </ul>
            </div>
        </div>
        <div class="row section3">
            <div class="col-md-2">
                <button type="button" class="my_button">Замовити екскурсію</button>
            </div>
            <div class="col-md-10">
                <ul class="buttons">
                    <li><a href="#" class="list">Що робити</a></li>
                    <li><a href="#" class="list">Локації</a></li>
                    <li><a href="#" class="list">Екскурсії</a></li>
                    <li><a href="#" class="list">Гід</a></li>
                </ul>
            </div>
        </div>
        <div class="row section4">
            <div class="col-md-2">
                <p class="mb-4">email: {{ $gid->email }}</p>
                <p class="mb-4">тел: {{ $gid->number }}</p>
            </div>
            <div class="col-md-10">
                <div class="col-md-10">
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

            <h2 class="section__title">Екскурсії від гіда</h2>
            <div class="row section5">
                <div class="col-md-12">
                    <div class="row">
                        @foreach($excursions as $excursion)
                            @if($gid->id == $excursion->gid_id)
                            <div class="col-md-6 pad">

                                <div class="row gallery-box">
                                    <div class="col-md-4 image-box">
                                        <div class="image-top">
                                            <p>4.5 <span class="circle-container"><span class="fa fa-star"></span></span> 73 відгуки</p>
                                        </div>
                                        <img src="{{Voyager::image ($excursion->photo)}}" class="image-box-box">

                                    </div>
                                    <div class="col-md-8 gallery-text ">
                                        <div class="">
                                                <p class="read-more">{{ $excursion->name }}</p>
                                                <p class="read-more">{{ $excursion->title }}</p>
                                            </a>
                                        </div>


                                    </div>
                                    <a href="/tur/excursions/{{ $excursion->slug }}" class="button-read-more">Детальніше></a>
                                </div>
                            </div>
                            @endif
                        @endforeach
                    </div>
                </div>

            </div>


        </div>

    </section>
@endsection