@extends('layouts.front')
@section('content')
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
        <div class="row mb-4">
            <div class="col-sm-6 col-md-4 col-lg-3">
                <a href="{{route('single-news')}}" class="card ">
                    <div class="card__img">
                        <img src="{{asset('images/card-image-weather.jpg')}}"
                             data-lg="{{asset('images/card-image-weather.jpg')}}"
                             data-md="{{asset('images/card-image-weather.jpg')}}"
                             data-sm="{{asset('images/card-image-weather.jpg')}}" alt="" class="blurryload">
                    </div>


                    <div class="card__overlay">
                        <div class="card__description ">
                            <div class="card__type label label--red">Новини</div>

                            <div class="card__title">Метеорологи прогнозують у Львові найсніжнішу зиму за останні 12
                                років
                            </div>
                        </div>
                    </div>

                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <a href="#" class="card ">
                    <div class="card__img">
                        <img src="" data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
            <div class="col-sm-6 col-md-4 col-lg-6">
                <a href="#" class="card ">
                    <div class="card__img">
                        <img src="../../images/card-image-6.jpg" data-lg="../../images/card-image-6.jpg"
                             data-md="../../images/card-image-6.jpg" data-sm="../../images/card-image-6.jpg" alt=""
                             class="blurryload">
                    </div>


                    <div class="card__overlay">
                        <div class="card__description card__description--short">
                            <div class="card__type label label--red">Новини</div>

                            <div class="card__title">Львів готується до міжнародного дня кави та складає пам'ятку
                                кавомана
                            </div>
                        </div>
                    </div>

                </a>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3">
                <a href="#" class="card ">
                    <div class="card__img">
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
            <div class="col-sm-6 col-md-6 col-lg-3">
                <a href="#" class="card ">
                    <div class="card__img">
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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
            <div class="col-sm-6 col-md-4 col-lg-3 hidden-sm">
                <a href="#" class="card ">
                    <div class="card__img">
                        <img src="{{asset('images/card-image-coffee.jpg')}}"
                             data-lg="{{asset('images/card-image-coffee.jpg')}}"
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


@endsection