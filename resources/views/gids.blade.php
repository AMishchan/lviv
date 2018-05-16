@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url(images/lviv-cover.jpg);">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">Гіди</h1>
                            <ul class="breadcrumbs">
                                <a href="#" class="label">Що робити/</a>
                                <a href="{{ asset('/tur') }}" class="label">Тури/</a>
                                <a href="{{ asset('/gids') }}" class="label">Гіди/</a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                <div class="mb-1 text-content text-secondary">
                    <br>
                    <br>
                    <p>Запрошую Вас на знайомство з прекрасним та водночас повним таємниць містом. Містом де народилось стільки пам'яток, які на сьогоднішній день входять до спадщини ЮНЕСКО, містом багатим на відомих та знаменитих постатей з історії міста,які творили історію Європи, містом кохання, містом багатим на байки і легенди, лише у Львові є єдина у світі копальня кави де кава проростає на стінах підземелля, вуличками Львова Вас супроводжуватимуть постаті ангелів, фей, принцес,королів, львівського ката і сажотруса, карети чекатимуть на Вас при входах та виходах з закладів Львова за Вашим бажанням. піднятись на Ратушу і оцінити місто з пташиного польоту-тепер це можливо! Львівська Ратуша чекає на своїх гостей. До Вашої уваги- Вулички таємничого Львова, підземелля, які датуються правлінням засновника міста Данила Галицького, Золота пора Австрійського правляння, Екскурсія Личаківським кладовищем,екскурсія дахами Львова, романтичний Львів, дитячі екскурсії. У Львові безліч різноманітних тематичних вечорів, багато хорошої музики, смаколиків, усміхнених перехожих ,які з радістю та гостиністю чекають на Вас. Де ще Ви зможете зустріти так багатонаціональне місто? Tylko we Lwowie(лише у Львові) Неможливо не закохатись у місто у якому все породжене з Любові. Пропоную Вам послуги екскурсовода у якого в душі панує Любов до Рідного міста.</p>
                </div>
            </div>
        </div>
        <section class="section">
            <div class="container">

                <h2 class="section__title">Гіди</h2>
                <div class="row section5">
                    <div class="col-md-12">
                        <div class="row">
                            @foreach($gids as $gid)
                                <div class="col-md-6 pad">

                                    <div class="row gallery-box">
                                        <div class="col-md-4 image-box">
                                            <div class="image-top">
                                                <p>4.5 <span class="circle-container"><span class="fa fa-star"></span></span> 73 відгуки</p>
                                            </div>
                                            <img src="{{Voyager::image ($gid->avatar)}}" class="image-box-box">

                                        </div>
                                        <div class="col-md-8 gallery-text ">
                                            <div class="">
                                                    <p class="read-more">{{ $gid->name }}</p>
                                                    <p class="read-more">{{ $gid->title }}</p>
                                                </a>
                                            </div>


                                        </div>
                                        <a href="/gids/gid/{{ $gid->slug }}" class="button-read-more">Детальніше></a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>


            </div>

        </section>
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
                        <img src="images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                             data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                             alt="" class="blurryload">
                    </div>
                    <div class="card__colored card__colored--green">
                        <div class="int_image text-white"><p>Події</p><p>Фестиваль</p></div>
                    </div>
                </a></div>
        </div>

    </div>



@endsection