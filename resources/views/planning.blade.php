@extends('layouts.front')
@section('content')
  @include('layouts.banners.banner')
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                <ul class="breadcrumbs">
                    <li><a class="link link--blue" href="https://travel-assets.devqub.com/page-your-lviv.html#">Головна</a></li>


                    <li>Події</li>
                </ul>
                <div class="mb-1 text-content text-secondary">
                    <p>Якщо ви завітали до Львова на довший час, то майте на увазі, що існують різноманітні комбінації
                        проїздних карток терміном на місяць чи більше
                        <br><br>Увага! Львів став першим містом в Україні, де запроваджено безготівкову систему
                        розрахунку в електротранспорті міста. З 16 лютого 2017 р. у всіх львівських трамваях та
                        тролейбусах, пасажири матимуть змогу оплатити проїзд через спеціальний QR код – електронну
                        програму для купівлі та компостирування квитка, яку ініціювали та розробили ЛКП
                        «Львівелектротранс» у співпраці із «Приватбанк».</p>
                </div>
                <div>
                    <a href="#" class="label mb-1">Кав’ярня</a>
                    <a href="#" class="label mb-1">Паб</a>
                    <a href="#" class="label mb-1">Ресторація</a>
                    <a href="#" class="label mb-1">Рестбар</a>
                    <a href="#" class="label mb-1">Кава</a>
                    <a href="#" class="label mb-1">Філіжанка</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <section class="section pb-3">
            <h2 class="section__title">Рекомендовані події</h2>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-1.jpg" data-lg="images/card-image-1.jpg" data-md="images/card-image-1.jpg" data-sm="images/card-image-1.jpg" alt="" class="blurryload">
                        </div>

                        <div class="card__date label label--date label--violet">
                            <div class="label__date">23</div>
                            <div class="label__month">жов</div>
                        </div>


                        <div class="card__overlay">
                            <div class="card__description card__description--short">
                                <div class="card__type label label--violet">концерт</div>

                                <div class="card__title">ОЛЕКСАНДР БОЖИК</div>
                                <ul class="card__info">
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>FESTrepublic,
                                        Старознесенська, 24-26
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-2.jpg" data-lg="images/card-image-2.jpg" data-md="images/card-image-2.jpg" data-sm="images/card-image-2.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="images/card-logo-2.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description card__description--short">
                                <div class="card__type label label--blue">РЕСТОРАН</div>

                                <div class="card__title">Кумпель</div>
                                <ul class="card__info">
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>

                </div>
                <div class="col-sm-6 col-md-4">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-3.jpg" data-lg="images/card-image-3.jpg" data-md="images/card-image-3.jpg" data-sm="images/card-image-3.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="images/card-logo-3.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description card__description--short">
                                <div class="card__type label label--blue">РЕСТОРАН</div>

                                <div class="card__title">Хмільний дім Роберта Домса</div>
                                <ul class="card__info">
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-4.jpg" data-lg="images/card-image-4.jpg" data-md="images/card-image-4.jpg" data-sm="images/card-image-4.jpg" alt="" class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="images/card-logo-1.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--blue">кав’ярня</div>

                                <div class="card__title">Віденська кав’ярня</div>
                                <ul class="card__info">
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 hidden-xs hidden-sm">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-5.jpg" data-lg="images/card-image-5.jpg" data-md="images/card-image-5.jpg" data-sm="images/card-image-5.jpg" alt="" class="blurryload">
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
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-md-6 hidden-xs hidden-sm hidden-md">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-6.jpg" data-lg="images/card-image-6.jpg" data-md="images/card-image-6.jpg" data-sm="images/card-image-6.jpg" alt="" class="blurryload">
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
            </div>
            <div class="text-center visible-xs">
                <a href="#" class="btn btn--green btn--arrows">Показати більше</a>
            </div>
        </section>
    </div>



   @include('maps.searchMap')

    @include('layouts.bottom-info')

@endsection