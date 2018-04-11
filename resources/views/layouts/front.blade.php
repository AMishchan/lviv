<body class="home-page">
<div class="wrapper">
    @include('layouts.header')
    <div class="main-menu">
        <div class="container">
            <div class="main-menu-close"></div>
            {{--including templates for all elements of menu--}}
            @foreach($data['categories'] as $category)
                    @include("layouts.main-menu-items.{$category['template']}")
            @endforeach
            <div class="menu" id="languages">
                <a href="#" class="btn-menu-back visible-xs visible-sm">Назад</a>
                @foreach($data['languages'] as $language)
                    <li><a onclick="location.href='setlang/{{$language->code}}'">{{$language->display_name}}</a>
                    </li>
                @endforeach
            </div>
            <div class="menu" id="search">
                <a href="#" class="btn-menu-back visible-xs visible-sm">Назад</a>
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <form action="" class="form-search form-search--green mb-4">
                            <input type="text" placeholder="Шукати ві Львові...">
                            <button class="btn">Шукати</button>
                        </form>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="h3 fw-black mb-2">За категоріями</div>
                                <a href="#" class="label label--big">Усі</a>
                                <a href="#" class="label label--big">Культура</a>
                                <a href="#" class="label label--big">Мистецтво</a>
                                <a href="#" class="label label--big">Ресторація</a>
                                <a href="#" class="label label--big">Культура</a>
                                <a href="#" class="label label--big">Мистецтво</a>
                                <a href="#" class="label label--big">Ресторація</a>
                            </div>
                            <div class="col-sm-4">
                                <div class="h3 fw-black mb-2">Популярні запити</div>
                                <ul class="menu__subnav pt-0">
                                    <li><a class="link link--blue" href="#">Нічні екскурсії</a></li>
                                    <li><a class="link link--blue" href="#">Львів туристичний</a></li>
                                    <li><a class="link link--blue" href="#">Криївка</a></li>
                                    <li><a class="link link--blue" href="#">Свято кави</a></li>
                                    <li><a class="link link--blue" href="#">Різдво</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @yield('content')
</div>
<footer class="footer">
    <div class="container">
        <div class="visible-lg visible-md">
            <div class="sitemap row-flex">
                @foreach($data['categories'] as $category)
                    <ul class="col">
                        <li><a href="#"><h3>{{$category['title']}}</h3></a></li>
                        @if($category['childrens'])
                            @foreach($category['left_sidebar_menu'] as $left_sidebar_menu)
                                <li><a href="#">{{$left_sidebar_menu['title']}}</a></li>
                            @endforeach
                        @endif
                    </ul>
                @endforeach
            </div>
        </div>
        <div class="footer__bottom">
            <div class="row-flex row-flex--between row-flex--wrap row-flex--middle">
                <div class="col-xs-12 col-md-6">
                    <div class="row-flex row-flex--wrap m-0">
                        <div class="footer__logo">
                            <img src="{{asset('images/logo.jpg')}}" alt="">
                            <img src="{{asset('images/logo-2.jpg')}}" alt="">

                        </div>
                        <div class="footer__contacts">
                            <p class="text-small"><strong>Львівська міська рада</strong><br>
                                пл. Ринок, 1, м. Львів, Україна, 79006</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="footer__socials">
                        <span class="mr-2 fw-bold visible-md-inline-block">Слідкуй за нами</span>
                        <ul class="social">
                            <li>
                                <a href="#" class="btn-social"><i class="fa fa-facebook-official"
                                                                  aria-hidden="true"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social"><i class="fa fa-twitter-square"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social"><i class="fa fa-google-plus-square"
                                                                  aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <ul class="py-1">
            <li class="d-i-block mr-2"><a href="#" class="text-small fw-black">Загальна інформація</a></li>
            <li class="d-i-block mr-2"><a href="#" class="text-small fw-black">Умови використання матеріалів сайту</a>
            </li>
            <li class="d-i-block"><a href="#" class="text-small fw-black">Контактна інформація</a></li>
        </ul>
    </div>
    <div class="footer__license">
        <p class="text-secondary text-small text-center m-0">2017 Lviv Travel</p>
    </div>
</footer>
<script defer src="{{asset('/js/scripts.js')}}"></script>
</body>
</html>
