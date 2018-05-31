
@extends('layouts.front')
@section('content')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <div class="cover" style="background-image: url({{asset('images/news-cover.jpg')}});">
        <div class="container">
            <div class="cover__content">
                <div class="d-i-block">
                    <h1 class="cover__title">Typи</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-10 text_area">
                        <p class=""></p>
                        <p>Кожне місто наділене своєю історією та індивідуальністю. Львів – старовинне місто, місто – історія, місто – музей, місто, що ніби ховає в кожному закутку якусь таємницю.
                            Львів неповторний в будь-яку пору року. Взимку чи влітку, восени чи весною навіть найвибагливіший гість міста, зможе знайти для себе свій закуток, де відчує неповторну атмосферу цього старенького та доброго Львова.
                            Під час екскурсійних турів ви зможете побачити, як кожна епоха залишила свій слід в історичних пам’ятках міста. Провівши вікенд у Львові ви матимете можливість проникнутись духом міста, відчути на собі його незвичну, старовинну атмосферу та традиції. Різноманітні екскурсії на будь-який смак, індивідуальні або групові, денні або вечірні, міські та заміські, гастрономічні та тематичні екскурсії нададуть вам можливість відчути історію у всій величі та красі.
                            Відтепер на сайті lviv.travel ви можете самостійно обрати,забронювати екскурсію відповідно до ваших вподобань та настрою.
                            Під час екскурсій Ви матимете змогу помандрувати в просторі й в часі - побувати у Львові княжому, середньовічному та австрійському. Не прогавте можливість дізнатися про улюблене місто ще більше! Екскурсії проводитимуться українською, польською чи німецькою мовами. Реєстрація обов`язкова.</p>
                    </div>

                </div>
            </div>
            {{--sdfsdfs--}}
            <div class="col-md-12">
                <div class="row">

                    <div class="col-md-6 big-images" >
                        <img  src="images/lviv.jpg">
                        <div class="big-images-container">
                            <p class="big-images-text">Самостійні екскурсії</p>
                            <a href="#">
                                <span>Детальніше</span>
                                <span class="fa fa-angle-right"></span>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6 big-images" >
                        <img  src="images/GidyPoMiru.jpg">
                            <div class="big-images-container">
                                <p class="big-images-text">Гіди</p>
                                <a href="/gids/">
                                    <span>Детальніше</span>
                                    <span class="fa fa-angle-right"></span>
                                </a>
                            </div>
                        </div>
                </div>
            </div>
            {{--xcfgdf--}}
            <div class="col-md-12">
                <div class="row pre_boxes">
                    <h1>Рекомендовані екскурсії</h1>
                    @foreach($excursions as $excursion)
                        <div class="boxes col-md-4">
                            <div class=" box_all">
                                <div >
                                    <p id="text2" class="js-text2">{!! $excursion->{"name_$locale"}!!}</p>
                                    <img src="{{ Voyager::image( $excursion->photo) }}" style="width:100%">
                                    <div class="overlay">
                                        <div class="overlay_text">{!! $excursion->{"title_$locale"}!!}
                                        </div>
                                        <div class="overlay_link">
                                            <a  href="/tur/excursions/{{ $excursion->slug }}">Детальніше </a><span class="fa fa-angle-right"></span>
                                        </div>
                                    </div>
                                </div>
                                <div id="text" class="js-text">
                                    <div id="preloader">
                                        <p>4.5</p>
                                        <div class="dws-progress-bar">
                                            <canvas class="my_canvas" width="30" height="30"></canvas>
                                        </div>
                                        <p>73 отзыва</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    @endforeach
                </div>
                <a href="#" id="box_end">Показати більше</a>
            </div>
            <div class="col-md-12 search_container">
                <input type="text" placeholder="Пошук">
                <select id="search1">
                    <option selected disabled>Рейтинг</option>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select>
                <select>
                    <option selected disabled>Час проведення</option>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select>
                <select>
                    <option selected disabled>Тривалість</option>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select>
                <select>
                    <option selected disabled>Тип</option>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select>
                <a href="#">Застосувати фільтр</a>
            </div>
            <h1>Інші екскурсії</h1>
            @foreach($excursions as $excursion)
            <div class="establishments">
                <div class="establishments_img">
                    <img src="{{ Voyager::image( $excursion->photo) }}" style="width:100%">
                    <div id="preloader2">
                        <p>4.5</p>
                        <div class="dws-progress-bar2">
                            <canvas id="my_canvas" width="30" height="30"></canvas>
                        </div>
                        <p>73 отзыва</p>
                    </div>


                </div>

                <div class="establishments_text">
                    <a href="/tur/excursions/{{ $excursion->slug }}">
                    <p>{!! $excursion->{"name_$locale"}!!}</p>
                    <p class="text_end">{!! $excursion->{"title_$locale"}!!}</p>
                    </a>
                </div>


            </div>
            @endforeach

            <div class="row">
                <div class="col-md-9 col-md-offset-2 int_text pad">
                    <p>@lang('voyager.generic.interest')</p>
                    <nav>
                        <ul class="int_list">
                            <li><a href="#">@lang('voyager.generic.what_to_do')</a></li>
                            <li><a href="#">@lang('voyager.generic.articles')</a></li>
                            <li><a href="{{asset('/museums')}}">@lang('voyager.generic.museums')</a></li>
                            <li><a href="#">@lang('voyager.generic.event')</a></li>
                            <li><a href="#">@lang('voyager.generic.excursions')</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
            </div>

        </div>
        </div>

    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="{{ asset('js/my_scripts.js') }}"></script>

@endsection