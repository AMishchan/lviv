@extends('layouts.front')
@section('content')
    <section>
        <div class="events-banner div-fill-img"
             style="background-image: url('/{{asset('images/place-image.jpg')}}/banerbfest.png');">
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
                         style="background-image: url('/{{asset('images/place-image.jpg')}}');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date-text">Дата проведення</p>
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                            <p class="card-marker-time-text">Час проведення</p>
                            <p class="card-marker-time">15.30-16.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('/{{asset('images/place-image.jpg')}}');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('/{{asset('images/place-image.jpg')}}');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('/{{asset('images/place-image.jpg')}}');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('/{{asset('images/place-image.jpg')}}');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <a href="#">Дивитись більше</a>
                </div>
            </div>

        </section>
        <section>
            <h2>Інші події</h2>
            <div class="col-lg-12">
                <div class="row row-filter text-center">
                    <div class="">
                        <ul class="landing-tab-menu">
                            <li class="active">Всі</li>
                            <li>Сьогодні</li>
                            <li>3 дні</li>
                            <li>Тиждень</li>
                        </ul>
                    </div>
                </div>
                <div class="row looking-for-event">
                    <div class="col-lg-3 calendar">
                        <div class="datepick_event_date">
                            <p>Дата проведення</p>
                            <input type="text" id="date" readonly>
                        </div>
                        <div class="datepick_date">
                            <h3 class="number"></h3>
                            <h4 class="month"></h4>
                        </div>
                        {{--<input type="date" data-date="" data-date-format="DD MMMM YYYY" value="2015-08-09">--}}
                    </div>
                    <div class="col-lg-6">
                        <div class="search col-lg-6">
                            <form action="" class="form-search">
                                <input type="text" placeholder="Пошук">
                                <button class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <form action="" v-bind:name="">
                            <div class="col-lg-3 location">

                                <select name="location" id="">
                                    <option value="">Локація</option>
                                    <option value="">Локація 2</option>
                                    <option value="">Локація 3</option>
                                    <option value="">Локація 4</option>
                                    <option value="">Локація 5</option>
                                </select>
                            </div>

                            <div class="col-lg-3 category">

                                <select name="location" id="">
                                    <option value="">Категорія</option>
                                    <option value="">Категорія 2</option>
                                    <option value="">Категорія 3</option>
                                    <option value="">Категорія 4</option>
                                    <option value="">Категорія 5</option>
                                </select>
                            </div>
                        </form>
                    </div>

                    <div class="col-lg-3">
                        <button class="button btn btn--green">Застосувати фільтр</button>
                    </div>
                </div>
            </div>
        </section>

    </div>
    <section class="section pb-0">
        <div class="container-fluid">
            <h2 class="section__title"> w</h2>
            <div class="row">
                <div class="col-sm-5 col-lg-4 p-0">
                    <div class="bg-blue px-onehalf">
                        <form class="places-form row-flex row-flex--nowrap">
                            <select class="js-select select2-hidden-accessible" name="places" multiple="" data-placeholder="Шукати у Львові…" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                <option></option>
                                <option value="Кумпель">Кумпель</option>
                                <option value="Криївка">Криївка</option>
                                <option value="Масони">Масони</option>
                                <option value="Правда">Правда</option>
                                <option value="Гасова лампа">Гасова лампа</option>
                                <option value="Човен">Човен</option>
                            </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="2" style="width: 149.766px;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="" style="width: 0.75em;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            <button class="btn">Шукати</button>
                        </form>

                        <form ation="" class="row-flex row-flex--between row-flex--wrap px-onehalf">
                            <div class="select-wrapper mb-onehalf col-sm-6 col-md-4" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <select class="js-select-simple select2-hidden-accessible" name="" id="" data-placeholder="Заклади" data-select2-id="3" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="5">Усі (122)</option>
                                    <option value="">Готелі (12)</option>
                                    <option value="">Хостели (10)</option>
                                    <option value="">Апартаменти (40)</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="4" style="width: 144px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2--container"><span class="select2-selection__rendered" id="select2--container" role="textbox" aria-readonly="true" title="Усі (122)">Усі (122)</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>

                            <div class="select-wrapper mb-onehalf col-sm-6 col-md-4" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <select class="js-select-simple select2-hidden-accessible" name="" id="" data-placeholder="Локація" data-select2-id="6" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="8">Усі (122)</option>
                                    <option value="">Центр міста (12)</option>
                                    <option value="">Сихів (10)</option>
                                    <option value="">Левандівка (40)</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="7" style="width: 134px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2--container"><span class="select2-selection__rendered" id="select2--container" role="textbox" aria-readonly="true" title="Усі (122)">Усі (122)</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>

                            <div class="select-wrapper mb-onehalf col-sm-12 col-md-4" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <select class="js-select-simple select2-hidden-accessible" name="" id="" data-placeholder="Рейтинг" data-select2-id="9" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="11">5 stars</option>
                                    <option value="">4 stars</option>
                                    <option value="">3 stars</option>
                                    <option value="">2 stars</option>
                                    <option value="">1 stars</option>
                                </select><span class="select2 select2-container select2-container--default select2-container--focus" dir="ltr" data-select2-id="10" style="width: 65px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2--container"><span class="select2-selection__rendered" id="select2--container" role="textbox" aria-readonly="true" title="5 stars">5 stars</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
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
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>          <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url({{asset('images/place-image.jpg')}});">
                                <div class="label label--blue">Ресторан</div>
                            </div>
                            <div class="place__info">
                                <h3 class="fz-20 mb-half">Кумпель</h3>
                                <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво в якому ллється рікою...</p>
                                <ul class="info-list info-list--light">

                                    <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>







                                </ul>  </div>
                        </div>        </div>

                </div>
                <div class="col-sm-7 col-lg-8 p-0">
                    <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d5146.0918354098385!2d24.030001485512912!3d49.84159473544383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1516055669525" frameborder="0" style="border:0" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>

    </section>

@endsection