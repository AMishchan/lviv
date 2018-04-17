@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url({{asset('images/single-news-cover.jpg')}});">
        <div class="container">
            <div class="cover__content">

                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">

                        <div class="d-i-block">
                            <div class="label label--red mb-1">Новини</div>
                            <h1 class="cover__title">{{ $post->title }}</h1>
                            <p class="cover__published mt-1 mb-0 text-secondary text-small">Опубліковано,{{$post->created_at}}</p>
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
            <div class="row mb-4">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="{{asset('images/card-image-coffee.jpg')}}" data-lg="{{asset('images/card-image-coffee.jpg')}}/card-image-coffee.jpg"
                                 data-md="{{asset('images/card-image-coffee.jpg')}}"
                                 data-sm="{{asset('images/card-image-coffee.jpg')}}" alt="" class="blurryload">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--red">Новини</div>

                                <div class="card__title">Львів готується до міжнародного дня кави та складає пам'ятку
                                    кавомана
                                </div>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="{{asset('images/card-image-coffee.jpg')}}" data-lg="{{asset('images/card-image-coffee.jpg')}}/card-image-coffee.jpg"
                                 data-md="{{asset('images/card-image-coffee.jpg')}}"
                                 data-sm="{{asset('images/card-image-coffee.jpg')}}" alt="" class="blurryload">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--red">Новини</div>

                                <div class="card__title">Львів готується до міжнародного дня кави та складає пам'ятку
                                    кавомана
                                </div>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="{{asset('images/card-image-coffee.jpg')}}" data-lg="{{asset('images/card-image-coffee.jpg')}}"
                                 data-md="{{asset('images/card-image-coffee.jpg')}}"
                                 data-sm="{{asset('images/card-image-coffee.jpg')}}" alt="" class="blurryload">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--red">Новини</div>

                                <div class="card__title">Львів готується до міжнародного дня кави та складає пам'ятку
                                    кавомана
                                </div>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3 hidden-md">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="{{asset('images/card-image-coffee.jpg')}}" data-lg="{{asset('images/card-image-coffee.jpg')}}"
                                 data-md="{{asset('images/card-image-coffee.jpg')}}"
                                 data-sm="{{asset('images/card-image-coffee.jpg')}}" alt="" class="blurryload">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--red">Новини</div>

                                <div class="card__title">Львів готується до міжнародного дня кави та складає пам'ятку
                                    кавомана
                                </div>
                            </div>
                        </div>

                    </a>
                </div>
            </div>
        </div>
    </section>
@endsection