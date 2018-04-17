@extends('layouts.front')
@section('content')
    <section>
        <div class="events-banner div-fill-img"
             style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
            <div class="container landing-banner-info">
                <div class="landing-banner-title">
                    <div class="text-hero text-white ">Події</div>
                </div>
                <div class="breadcrumbs banner-breadcrumbs">Головна/Події</div>
            </div>
        </div>
    </section>

    <div class="container events-container">
        <section>
            <div class="row text-center">
                <div class="landing-main-desc col-lg-6 col-lg-offset-3">
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et
                    dolore magna aliqua. Ut
                    enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                    consequat.
                    Duis aute irure dolor in
                    reprehenderit in voluptate velit esse cillum dolore eu fugiat
                    nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                    mollit anim id est laborum."
                </div>
            </div>
            <h2>Рекомендовані події</h2>
            <div class="row events-heap">
                <div class="col-lg-8">
                    <div class="landing-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date-text">Дата проведення</p>
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                            <p class="card-marker-time-text">Час проведення</p>
                            <p class="card-marker-time">15.30-16.00</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>

                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="container">
                    <a href="#">Дивитись більше</a>
                </div>
            </div>
        </section>
        <section>
            <h2>Інші події</h2>
        </section>
    </div>
    <section class="section pb-0">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-5 col-lg-4 p-0">
                    <div class="bg-blue px-onehalf">
                        <form class="places-form row-flex row-flex--nowrap">
                            <select class="js-select select2-hidden-accessible" name="places" multiple=""
                                    data-placeholder="Шукати у Львові…" data-select2-id="1" tabindex="-1"
                                    aria-hidden="true">
                                <option></option>
                                <option value="Кумпель">Кумпель</option>
                                <option value="Криївка">Криївка</option>
                                <option value="Масони">Масони</option>
                                <option value="Правда">Правда</option>
                                <option value="Гасова лампа">Гасова лампа</option>
                                <option value="Човен">Човен</option>
                            </select>
                            <button class="btn">Шукати</button>
                        </form>

                        <form ation="" class="row-flex row-flex--between row-flex--wrap px-onehalf">
                            <div class="select-wrapper mb-onehalf col-sm-6 col-md-4"
                                 style="background-image: url('{{asset('images/place-images')}}/place-image.jpg');">
                                <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                        data-placeholder="Заклади" data-select2-id="3" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="5">Усі (122)</option>
                                    <option value="">Готелі (12)</option>
                                    <option value="">Хостели (10)</option>
                                    <option value="">Апартаменти (40)</option>
                                </select>
                            </div>

                            <div class="select-wrapper mb-onehalf col-sm-6 col-md-4"
                                 style="">
                                <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                        data-placeholder="Локація" data-select2-id="6" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="8">Усі (122)</option>
                                    <option value="">Центр міста (12)</option>
                                    <option value="">Сихів (10)</option>
                                    <option value="">Левандівка (40)</option>
                                </select>
                            </div>

                            <div class="select-wrapper mb-onehalf col-sm-12 col-md-4">
                                <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                        data-placeholder="Рейтинг" data-select2-id="9" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="11">5 stars</option>
                                    <option value="">4 stars</option>
                                    <option value="">3 stars</option>
                                    <option value="">2 stars</option>
                                    <option value="">1 stars</option>
                                </select>
                            </div>
                        </form>
                    </div>


                    <div class="places-list">
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                    в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-sm-7 col-lg-8 p-0">
                    <iframe class="map"
                            src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d5146.0918354098385!2d24.030001485512912!3d49.84159473544383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1516055669525"
                            frameborder="0" style="border:0" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>

    </section>

@endsection