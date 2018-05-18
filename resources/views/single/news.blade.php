@extends('layouts.front')
@section('content')

    <div class="cover" style="background-image: url({{ Voyager::image( $post->image1 ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Новини</div>
                            <h1 class="cover__title">{{ $post->title }}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="mb-4">
            <div class="row">
                <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                    <ul class="breadcrumbs">
                        <li><a class="link link--blue" href="#">Вже і зараз</a></li>
                        <li><a class="link link--blue" href="#">Свіжі новини</a></li>


                        <li>{{ $post->title }}</li>
                    </ul>
                    <div class="text-secondary text-content">
                        <p class="mb-3">{!! $post->body !!}</p>
                    </div>

                    <div class="mb-2">
                        <a href="#" class="label">{{$post->meta_description}}</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="container">
            <h2 class="section__title">Новини міста</h2>

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

    </section>
@endsection