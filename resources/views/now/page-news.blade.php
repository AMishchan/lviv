@extends('layouts.front')
@section('content')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <div class="cover" style="background-image: url({{asset('images/news-cover.jpg')}});">
        <div class="container">
            <div class="cover__content">
                <div class="d-i-block">
                    <h1 class="cover__title">Свіжі новини</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <ul class="breadcrumbs">
            <li><a class="link link--blue" href="#">Вже і зараз</a></li>
            <li>Свіжі новини</li>
        </ul>
        <div class="mb-1">
            <a href="#" class="mr-half label label--tab label--big active">Усі</a>
            <a href="#" class="mr-half label label--tab label--big">Місто</a>
            <a href="#" class="mr-half label label--tab label--big">Мистецтво</a>
            <a href="#" class="mr-half label label--tab label--big">Політика</a>
        </div>
        <div class="row">
            @foreach($posts as $post)
                <div class="col-md-3">
                    <a href="/now/page-news/post/{{ $post->slug }}">
                        <img src="{{ Voyager::image( $post->image ) }}" style="width:100%">
                        <span>{{ $post->title }}</span>
                    </a>
                </div>
            @endforeach
        </div>


    </div>


@endsection