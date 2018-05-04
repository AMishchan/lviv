@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url({{ Voyager::image( $development->banner_photo ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">{{$development->type}}</div>
                            <h1 class="cover__title">{{$development->name}}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">

        <ul class="breadcrumbs">
            <li><a class="link link--blue" href="#">Твій Львів</a></li>
            <li><a class="link link--blue" href="#">Пам’ятки</a></li>


            <li>{{$development->name}}</li>
        </ul>
        <div class="row mb-4">
            <div class="col-xs-12 col-sm-5 col-md-4 pull-right">
                <div class="row">
                    <div class="col-lg-11 col-lg-offset-1">
                        <aside class="sidebar">
                            <ul class="info-list ">
                                <li><i class="icon-date"></i>
                                <span class="h3 text-primary">{{$development->date_on}}</span></li>

                                <li><i class="icon-location"></i><span>{{$development->address}}</span></li>

                                <li><i class="icon-phone"></i><span>{{$development->number}}</span></li>

                                <li><i class="icon-time"></i><span>{{$development->time}}</span></li>

                                <li><i class="icon-link"></i><a href="#" target="_blank">opera.lviv.ua</a></li>

                                <li><i class="icon-tickets"></i><a href="#" target="_blank">gastroli.ua</a></li>


                            </ul>
                            <a href="#" class="btn btn--violet d-block">Купити квиток</a>
                        </aside>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-7 col-md-8 pull-right">
                <p class="text-secondary text-content pr-3-sm">
                    {{$development->title}}
                </p>
                <p id="hidden-content" class="collapse text-secondary text-content mb-3 pr-3-sm">
                    {{$development->post}}
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

    </div>
    @include('maps.searchMap')
@endsection