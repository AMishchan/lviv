@extends('layouts.front')
@section('content')
   @include('layouts.banners.banner')
    <div class="container">
        <ul class="breadcrumbs">
            <li><a class="link link--blue" href="#">Їжа та напої</a></li>
            <li><a class="link link--blue" href="#">Ресторани</a></li>


            <li>Кумпель</li>
        </ul>
        <div class="row mb-4">
            <div class="col-xs-12 col-sm-5 col-md-4 pull-right">
                <div class="row">
                    <div class="col-lg-11 col-lg-offset-1">
                        <aside class="sidebar">
                            <ul class="info-list ">

                                <li><i class="icon-location"></i><span>Пр Свободи, 28, м. Львів</span></li>

                                <li><i class="icon-phone"></i><span>+38 (032) 229-51-77</span></li>

                                <li><i class="icon-time"></i><span>10:00-02:00</span></li>

                                <li><i class="icon-link"></i><a href="#" target="_blank">kumpel.com.ua</a></li>


                            </ul>
                            <div class="recommended text-center">
                                <img class="mb-1" src="images/recommended.svg" alt="">
                                <p>Рекомендовано <br> Lviv Travel</p>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-7 col-md-8 pull-right">
                <p class="text-secondary text-content pr-3-sm">
                    Пивна ресторація <a href="#">«Кумпель»</a> у Львові поєднує в собі найкращі ретротрадиції першої
                    половини 20-го
                    століття з сучасним європейським індустріальним стилем. Дизайн закладу отримав друге місце у
                    категорії «Дизайн
                    інтер'єру ресторанів» на дизайнерському бієнале у <a href="#">Барселоні</a>. Бо є в «Кумпелі» все
                    для доброго
                    відпочинку – і зручні дивани для великого товариства, і невеликі столики для задушевних бесід за
                    гальбою
                    холодного пива, і барна зона, де можна перехилити чарочку з другом, якщо Ви поспішаєте. А ще тут
                    маєте
                    можливість посидіти на літній терасі, неквапом спостерігаючи за метушливим серцем міста,
                    насолоджуючись хорошим
                    напоєм і смачною стравою.
                </p>
                <p id="hidden-content" class="collapse text-secondary text-content mb-3 pr-3-sm">
                    Перший палац збудовано у стилі класицизму за проектом архітектора Ігнатія Хамбреза. Це була
                    двоповерхова прямокутна в плані будівля із високим
                    <br><br>Перший палац збудовано у стилі класицизму за проектом архітектора Ігнатія Хамбреза. Це була
                    двоповерхова прямокутна в плані будівля із високим
                    <br><br>Перший палац збудовано у стилі класицизму за проектом архітектора Ігнатія Хамбреза. Це була
                    двоповерхова прямокутна в плані будівля із високим
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
                <div class="gallery">
                    <img class="gallery__img" src="images/kumpel-2.jpg" alt="">
                    <img class="gallery__img" src="images/kumpel-3.jpg" alt="">
                    <img class="gallery__img" src="images/kumpel-4.jpg" alt="">
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

        <section class="section">
            <h2 class="section__title pt-2-md">Події у закладі</h2>
            <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-1.jpg" data-lg="images/card-image-1.jpg"
                                 data-md="images/card-image-1.jpg" data-sm="images/card-image-1.jpg" alt=""
                                 class="blurryload">
                        </div>

                        <div class="card__date label label--date label--violet">
                            <div class="label__date">23</div>
                            <div class="label__month">жов</div>
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--violet">концерт</div>

                                <div class="card__title">ОЛЕКСАНДР БОЖИК</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>FESTrepublic, Старознесенська, 24-26</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-5.jpg" data-lg="images/card-image-5.jpg"
                                 data-md="images/card-image-5.jpg" data-sm="images/card-image-5.jpg" alt=""
                                 class="blurryload">
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
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-2.jpg" data-lg="images/card-image-2.jpg"
                                 data-md="images/card-image-2.jpg" data-sm="images/card-image-2.jpg" alt=""
                                 class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="images/card-logo-2.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--blue">РЕСТОРАН</div>

                                <div class="card__title">Кумпель</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3 hidden-md">
                    <a href="#" class="card ">
                        <div class="card__img">
                            <img src="images/card-image-3.jpg" data-lg="images/card-image-3.jpg"
                                 data-md="images/card-image-3.jpg" data-sm="images/card-image-3.jpg" alt=""
                                 class="blurryload">
                        </div>


                        <div class="card__logo">
                            <img src="images/card-logo-3.png" alt="">
                        </div>


                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__type label label--blue">РЕСТОРАН</div>

                                <div class="card__title">Хмільний дім Роберта Домса</div>
                                <ul class="card__info">
                                    <li><i class="icon-location"></i>Львів, Площа Ринок, 1</li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
            </div>
            <a href="#" class="btn btn--green">Показати більше</a>
        </section>

    </div>
    @include('maps.searchMap')
    @include('layouts.interested')
@endsection