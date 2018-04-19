@extends('layouts.front')
@section('content')
    @include('layouts.banners.banner')
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                <ul class="breadcrumbs">
                    <li><a class="link link--blue" href="#">Твій Львів</a></li>
                    <li>Їжа та напої</li>
                </ul>
                <div class="mb-1 text-content text-secondary">
                    <p>Lorem </p>
                </div>
                <div>
                    <a href="#" class="label">Кав’ярня</a>
                    <a href="#" class="label">Паб</a>
                    <a href="#" class="label">Ресторація</a>
                    <a href="#" class="label">Рестбар</a>
                    <a href="#" class="label">Кава</a>
                    <a href="#" class="label">Філіжанка</a>
                </div>
            </div>
        </div>
    </div>
    <section class="section mt-3-md">
        <div class="container">
            <h2 class="secttion__title mb-1">Рекомендовані заклади</h2>
            <div class="mb-1">
                <a href="#" class="mr-half label label--tab label--big">Усі</a>
                <a href="#" class="mr-half label label--tab label--big">Культура</a>
                <a href="#" class="mr-half label label--tab label--big">Мистецтво</a>
                <a href="#" class="mr-half label label--tab label--big">Ресторація</a>
            </div>
            <div class="row mb-1">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="{{route('food-place')}}" class="card ">
                        <div class="card__img">
                            <img src="{{asset('images/card-image-4.jpg')}}"
                                 data-lg="images/card-image-4.jpg" data-md="images/card-image-4.jpg"
                                 data-sm="images/card-image-4.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-logo-1.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--blue">кав’ярня</div>

                                <div class="card__title">Віденська кав’ярня</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="https://travel-assets.devqub.com/page-food.html#" class="card ">
                        <div class="card__img">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-image-5.jpg"
                                 data-lg="images/card-image-5.jpg" data-md="images/card-image-5.jpg"
                                 data-sm="images/card-image-5.jpg" alt="" class="blurryload">
                        </div>

                        <div class="card__date label label--date label--orange">
                            <div class="label__date">3</div>
                            <div class="label__month">год</div>
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--orange">Екскурсії</div>

                                <div class="card__title">Екскурсія "Львів - місто кави і шоколаду"</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-6">
                    <a href="https://travel-assets.devqub.com/page-food.html#" class="card ">
                        <div class="card__img">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-image-6.jpg"
                                 data-lg="images/card-image-6.jpg" data-md="images/card-image-6.jpg"
                                 data-sm="images/card-image-6.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description card__description--short">
                                <div class="card__type label label--red">путівник</div>

                                <div class="card__title">Львів готується до міжнародного дня кави та складає пам'ятку
                                    кавомана
                                </div>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3">
                    <a href="https://travel-assets.devqub.com/page-food.html#" class="card ">
                        <div class="card__img">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-image-4.jpg"
                                 data-lg="images/card-image-4.jpg" data-md="images/card-image-4.jpg"
                                 data-sm="images/card-image-4.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-logo-1.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--blue">кав’ярня</div>

                                <div class="card__title">Віденська кав’ярня</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3">
                    <a href="https://travel-assets.devqub.com/page-food.html#" class="card ">
                        <div class="card__img">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-image-5.jpg"
                                 data-lg="images/card-image-5.jpg" data-md="images/card-image-5.jpg"
                                 data-sm="images/card-image-5.jpg" alt="" class="blurryload">
                        </div>

                        <div class="card__date label label--date label--orange">
                            <div class="label__date">3</div>
                            <div class="label__month">год</div>
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--orange">Екскурсії</div>

                                <div class="card__title">Екскурсія "Львів - місто кави і шоколаду"</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3">
                    <a href="https://travel-assets.devqub.com/page-food.html#" class="card ">
                        <div class="card__img">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-image-4.jpg"
                                 data-lg="images/card-image-4.jpg" data-md="images/card-image-4.jpg"
                                 data-sm="images/card-image-4.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-logo-1.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--blue">кав’ярня</div>

                                <div class="card__title">Віденська кав’ярня</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 hidden-sm">
                    <a href="https://travel-assets.devqub.com/page-food.html#" class="card ">
                        <div class="card__img">
                            <img src="./Lviv Travel _ Їжа та напої_files/card-image-5.jpg"
                                 data-lg="images/card-image-5.jpg" data-md="images/card-image-5.jpg"
                                 data-sm="images/card-image-5.jpg" alt="" class="blurryload">
                        </div>

                        <div class="card__date label label--date label--orange">
                            <div class="label__date">3</div>
                            <div class="label__month">год</div>
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--orange">Екскурсії</div>

                                <div class="card__title">Екскурсія "Львів - місто кави і шоколаду"</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
            </div>
            <button class="btn btn--green">Показати більше</button>
        </div>
    </section>
   @include('maps.searchMap')
   @include('layouts.interested')

@endsection