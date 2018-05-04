@extends('layouts.front')
@section('content')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <div class="cover" style="background-image: url({{asset('images/news-cover.jpg')}});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">Свіжі новини</h1>
                            <ul class="breadcrumbs">
                                <a href="{{ asset('/') }}" class="label">Головна/</a>
                                <a href="#" class="label">Вже і зараз/</a>
                                <a href="{{ asset('/now/page-news') }}"class="label">Свіжі новини</a></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-4">
        <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
            <div class="mb-1 text-content text-secondary">
                <br>
                <br>
                <p>Запрошую Вас на знайомство з прекрасним та водночас повним таємниць містом. Містом де народилось стільки пам'яток, які на сьогоднішній день входять до спадщини ЮНЕСКО, містом багатим на відомих та знаменитих постатей з історії міста,які творили історію Європи, містом кохання, містом багатим на байки і легенди, лише у Львові є єдина у світі копальня кави де кава проростає на стінах підземелля, вуличками Львова Вас супроводжуватимуть постаті ангелів, фей, принцес,королів, львівського ката і сажотруса, карети чекатимуть на Вас при входах та виходах з закладів Львова за Вашим бажанням. піднятись на Ратушу і оцінити місто з пташиного польоту-тепер це можливо! Львівська Ратуша чекає на своїх гостей. До Вашої уваги- Вулички таємничого Львова, підземелля, які датуються правлінням засновника міста Данила Галицького, Золота пора Австрійського правляння, Екскурсія Личаківським кладовищем,екскурсія дахами Львова, романтичний Львів, дитячі екскурсії. У Львові безліч різноманітних тематичних вечорів, багато хорошої музики, смаколиків, усміхнених перехожих ,які з радістю та гостиністю чекають на Вас. Де ще Ви зможете зустріти так багатонаціональне місто? Tylko we Lwowie(лише у Львові) Неможливо не закохатись у місто у якому все породжене з Любові. Пропоную Вам послуги екскурсовода у якого в душі панує Любов до Рідного міста.</p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            @foreach($posts as $post)

        </div>
        <div class="col-sm-6 col-md-4">
            <a href="/now/page-news/post/{{ $post->slug }}" class="card">
                <div class="card__img">
                    <img src="{{ Voyager::image( $post->image ) }}" data-lg="{{ Voyager::image( $post->image ) }}"
                         data-md="{{ Voyager::image( $post->image ) }}" data-sm="{{ Voyager::image( $post->image ) }}" alt=""
                         class="blurryload">
                </div>
                <div class="card__overlay">
                    <div class="card__description card__description--short">
                        <div class="card__type label label--blue"></div>

                        <div class="card__title">{{ $post->title }}</div>

                    </div>
                </div>
            </a>
            @endforeach

        </div>
        <div class="col-md-10"><a href="#" id="box_end">Дивитись більше</a></div>


        <div class="row">
            <div class="col-md-9 int_text">
                <p>Вас це може зацікавити</p>
                <nav>
                    <ul class="int_list">
                        <li><a href="#">Що робити</a></li>
                        <li><a href="#">Цікаві статті</a></li>
                        <li><a href="#">Музеї</a></li>
                        <li><a href="#">Події</a></li>
                        <li><a href="#">Екскурсії</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <a href="#" class="card card--sq">

                    <div class="card__img">
                        <img src="../../images/festival.jpg" data-lg="images/festival.jpg"
                             data-md="images/festival.jpg" data-sm="images/festival.jpg"
                             alt="" class="blurryload">
                    </div>
                    <div class="card__colored card__colored--green">
                        <div class="int_image text-white"><p>Події</p><p>Фестиваль</p></div>
                    </div>

                </a>
            </div>
            <div class="col-md-3">
                <a href="#" class="card card--sq">
                    <div class="card__img">
                        <img src="../../images/Lvov-nochyu.jpg" data-lg="images/card-coloured-image-4.jpg"
                             data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                             alt="" class="blurryload">
                    </div>
                    <div class="card__colored card__colored--red">
                        <div class="int_image text-white"><p>Громадські місця</p><p>Високий Замок</p></div>
                    </div>

                </a>
            </div>
            <div class="col-md-3">
                <a href="#" class="card card--sq">
                    <div class="card__img">
                        <img src="../../images/parking-white.jpg" data-lg="../../images/parking-white.jpg"
                             data-md="../../images/parking-white.jpg" data-sm="../../images/parking-white.jpg"
                             alt="" class="blurryload">
                    </div>
                    <div class="card__colored card__colored--orange">
                        <div class="int_image text-white"><p>Транспорт</p><p>Парковки</p></div>
                    </div>

                </a>
            </div>
            <div class="col-md-3">
                <a href="#" class="card card--sq">

                    <div class="card__img">
                        <img src="../../images/festival.jpg" data-lg="images/festival.jpg"
                             data-md="images/festival.jpg" data-sm="images/festival.jpg"
                             alt="" class="blurryload">
                    </div>
                    <div class="card__colored card__colored--green">
                        <div class="int_image text-white"><p>Події</p><p>Фестиваль</p></div>
                    </div>

                </a>
            </div>


        </div>

    </div>


@endsection