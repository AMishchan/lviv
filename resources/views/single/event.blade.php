@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url(images/event-cover.jpg);">
        <div class="container">
            <div class="cover__content">


                <div class="d-i-block">
                    <div class="label label--violet mb-1">Концерт</div>
                    <h1 class="cover__title">"ОРФЕЙ" - "Різдво у Львові"</h1>
                </div>


            </div>
        </div>
    </div>
    <div class="container">
        <ul class="breadcrumbs">
            <li><a class="link link--blue" href="#">Твій Львів</a></li>
            <li><a class="link link--blue" href="#">Пам’ятки</a></li>


            <li>"ОРФЕЙ" - "Різдво у Львові"</li>
        </ul>
        <div class="row mb-4">
            <div class="col-xs-12 col-sm-5 col-md-4 pull-right">
                <div class="row">
                    <div class="col-lg-11 col-lg-offset-1">
                        <aside class="sidebar">
                            <ul class="info-list ">
                                <li><i class="icon-date"></i><span
                                            class="h3 text-primary">12 Січня 2018, Пт. 17:00</span></li>

                                <li><i class="icon-location"></i><span>Львівський національний академічний театр опери та балету ім. Соломії Крушельницької. Пр Свободи,
                        28, м. Львів</span></li>

                                <li><i class="icon-phone"></i><span>+38 (032) 229-51-77</span></li>

                                <li><i class="icon-time"></i><span>21:00-23:00</span></li>

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
                    Вокальний колектив "Орфей" запрошує львів'ян та гостей міста на різдвяний концерт "Різдво у Львові"
                    що відбудеться 12 січня 2018 року у приміщенні театру ім. Марії Заньковецької о 17.00 та 19.30. На
                    вас чекає яскраве шоу, добре відомі хіти та прем'єри нових пісень.
                    <br><br>Творити різдвяну казку нам допоможуть наші друзі - колектив народного танцю "Веселі
                    Черевички" керівники Володимир та Марія Чмирі а також Павло Табаков.
                    <br><br>
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

    </div>
    <section class="section pb-0">
        <div class="container-fluid">
            <h2 class="section__title">Поруч знаходиться</h2>
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
                            </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                           data-select2-id="2" style="width: 149.766px;"><span class="selection"><span
                                            class="select2-selection select2-selection--multiple" role="combobox"
                                            aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul
                                                class="select2-selection__rendered"><li
                                                    class="select2-search select2-search--inline"><input
                                                        class="select2-search__field" type="search" tabindex="0"
                                                        autocomplete="off" autocorrect="off" autocapitalize="none"
                                                        spellcheck="false" role="textbox" aria-autocomplete="list"
                                                        placeholder=""
                                                        style="width: 0.75em;"></li></ul></span></span><span
                                        class="dropdown-wrapper" aria-hidden="true"></span></span>
                            <button class="btn">Шукати</button>
                        </form>

                        <form ation="" class="row-flex row-flex--between row-flex--wrap px-onehalf">
                            <div class="select-wrapper mb-onehalf col-sm-6 col-md-4"
                                 style="background-image: url(images/icons/form-places-icon.svg);">
                                <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                        data-placeholder="Заклади" data-select2-id="3" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="5">Усі (122)</option>
                                    <option value="">Готелі (12)</option>
                                    <option value="">Хостели (10)</option>
                                    <option value="">Апартаменти (40)</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                               data-select2-id="4" style="width: 144px;"><span class="selection"><span
                                                class="select2-selection select2-selection--single" role="combobox"
                                                aria-haspopup="true" aria-expanded="false" tabindex="0"
                                                aria-labelledby="select2--container"><span
                                                    class="select2-selection__rendered" id="select2--container"
                                                    role="textbox" aria-readonly="true"
                                                    title="Усі (122)">Усі (122)</span><span
                                                    class="select2-selection__arrow" role="presentation"><b
                                                        role="presentation"></b></span></span></span><span
                                            class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>

                            <div class="select-wrapper mb-onehalf col-sm-6 col-md-4"
                                 style="background-image: url(images/icons/form-locaion-icon.svg);">
                                <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                        data-placeholder="Локація" data-select2-id="6" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="8">Усі (122)</option>
                                    <option value="">Центр міста (12)</option>
                                    <option value="">Сихів (10)</option>
                                    <option value="">Левандівка (40)</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                               data-select2-id="7" style="width: 134px;"><span class="selection"><span
                                                class="select2-selection select2-selection--single" role="combobox"
                                                aria-haspopup="true" aria-expanded="false" tabindex="0"
                                                aria-labelledby="select2--container"><span
                                                    class="select2-selection__rendered" id="select2--container"
                                                    role="textbox" aria-readonly="true"
                                                    title="Усі (122)">Усі (122)</span><span
                                                    class="select2-selection__arrow" role="presentation"><b
                                                        role="presentation"></b></span></span></span><span
                                            class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>

                            <div class="select-wrapper mb-onehalf col-sm-12 col-md-4"
                                 style="background-image: url(images/icons/form-rating-icon.svg);">
                                <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                        data-placeholder="Рейтинг" data-select2-id="9" tabindex="-1" aria-hidden="true">
                                    <option value="" data-select2-id="11">5 stars</option>
                                    <option value="">4 stars</option>
                                    <option value="">3 stars</option>
                                    <option value="">2 stars</option>
                                    <option value="">1 stars</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                               data-select2-id="10" style="width: 65px;"><span class="selection"><span
                                                class="select2-selection select2-selection--single" role="combobox"
                                                aria-haspopup="true" aria-expanded="false" tabindex="0"
                                                aria-labelledby="select2--container"><span
                                                    class="select2-selection__rendered" id="select2--container"
                                                    role="textbox" aria-readonly="true"
                                                    title="5 stars">5 stars</span><span class="select2-selection__arrow"
                                                                                        role="presentation"><b
                                                        role="presentation"></b></span></span></span><span
                                            class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>
                        </form>
                    </div>


                    <div class="places-list">
                        <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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
                            <div class="place__img" style="background-image: url(images/place-image.jpg);">
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