@extends('layouts.front')
@section('content')

    <div class="cover" style="background-image: url({{ Voyager::image( $excursion->baner_photo ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Екскурсії</div>
                            <h1 class="cover__title">{{ $excursion->name }}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-2 left-bar">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <p class="reviews">73 відгуки</p>
                <a href="#" class="review">Залишити відгук</a>
            </div>
            <div class="col-md-10">
                <ul class="string-list">
                    <li><a href="#" class="string">Детальніше</a></li>
                    <li><a href="#" class="string">Екскурсії</a></li>
                    <li><a href="#" class="string">Профіль</a></li>
                </ul>
            </div>
        </div>
        <div class="row section3">
            <div class="col-md-2 section3_but">
                <button type="button" class="my_button">Замовити екскурсію</button>
            </div>

            <div class="col-md-10">
                <ul class="buttons">
                    <li><a href="#" class="list">Що робити</a></li>
                    <li><a href="#" class="list">Локації</a></li>
                    <li><a href="#" class="list">Екскурсії</a></li>
                    <li><a href="#" class="list">Гід</a></li>
                </ul>
            </div>
        </div>
        <div class="mb-4">
            <div class="row">
                <div class="col-md-2 left_bar">
                    <a href="#"><button type="button" class="my_button2">Інші екскурсії гіда</button></a>
                    <a href="#"><button type="button" class="my_button2">Сторінка гіда</button></a>
                    {{--<p class="mb-4">email: {{ $gid->email }}</p>--}}
                    {{--<p class="mb-4">тел: {{ $gid->number }}</p>--}}
                </div>
                <div class="col-md-10">
                    <ul class="breadcrumbs">
                        <a href="#" class="label">Що робити </a>
                        <a href="#" class="label">Локації </a>
                        <a href="#" class="label">Екскурсії </a>
                    </ul>

                    <div class="col-xs-12 col-sm-7 col-md-8 pull-right">
                        <p class="text-secondary text-content pr-3-sm">
                            {{$excursion->title}}
                        </p>
                        <p id="hidden-content" class="collapse text-secondary text-content mb-3 pr-3-sm">
                            {{$excursion->post}}
                        </p>
                        <a class="collapsed c-btn link-default text-secondary mb-3 d-i-block" href="javascript:void(0);"
                           data-toggle="collapse" data-target="#hidden-content">
                            <span class="c-closed">Показати більше</span>
                            <span class="c-open">Приховати</span>
                        </a>
                        <!-- Root element of PhotoSwipe. Must have class pswp. -->
                        <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

                            <!-- Background of PhotoSwipe.
                                 It's a separate element as animating opacity is faster than rgba(). -->
                            <div class="pswp__bg"></div>

                            <!-- Slides wrapper with overflow:hidden. -->
                            <div class="pswp__scroll-wrap">

                                <!-- Container that holds slides.
                                    PhotoSwipe keeps only 3 of them in the DOM to save memory.
                                    Don't modify these 3 pswp__item elements, data is added later on. -->
                                <div class="pswp__container">
                                    <div class="pswp__item"></div>
                                    <div class="pswp__item"></div>
                                    <div class="pswp__item"></div>
                                </div>

                                <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
                                <div class="pswp__ui pswp__ui--hidden">

                                    <div class="pswp__top-bar">

                                        <!--  Controls are self-explanatory. Order can be changed. -->

                                        <div class="pswp__counter"></div>

                                        <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                                        <button class="pswp__button pswp__button--share" title="Share"></button>

                                        <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                                        <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                                        <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                                        <!-- element will get class pswp__preloader--active when preloader is running -->
                                        <div class="pswp__preloader">
                                            <div class="pswp__preloader__icn">
                                                <div class="pswp__preloader__cut">
                                                    <div class="pswp__preloader__donut"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                                        <div class="pswp__share-tooltip"></div>
                                    </div>

                                    <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                                    </button>

                                    <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                                    </button>

                                    <div class="pswp__caption">
                                        <div class="pswp__caption__center"></div>
                                    </div>

                                </div>

                            </div>

                        </div>



                    <div class="images_gallery">
                        <img class="mySlides" src="{{ Voyager::image( $excursion->photo ) }}" style="width:50%">
                        <img class="mySlides" src="{{ Voyager::image( $excursion->photo1 ) }}" style="width:50%">
                        <img class="mySlides" src="{{ Voyager::image( $excursion->photo2 ) }}" style="width:50%">
                        <div class="gallery_button_left" onclick="plusDivs(-1)">&#10094;</div>
                        <div class="gallery_button_right" onclick="plusDivs(1)">&#10095;</div>
                    </div>
                </div>

            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2 int_text2">
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
                </a>
            </div>
        </div>
    </div>
    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            if (n > x.length) {slideIndex = 1}
            if (n < 1) {slideIndex = x.length}
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex-1].style.display = "block";
        }
    </script>
@endsection