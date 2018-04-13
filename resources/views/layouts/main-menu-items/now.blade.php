<div class="menu" id="now">
    <a href="#" class="btn-menu-back visible-xs visible-sm">Назад</a>
    <div class="row">
        <div class="col-md-3 col-lg-3">
            <ul class="accordion-menu menu__subnav menu-trig menu__nav">
                @foreach($data['categories'] as $category)
                    @if($category['template'] == 'now' & $category['left_sidebar_menu'] != 0)
                        @foreach($category['left_sidebar_menu'] as $left_sidebar_menu)
                            <li><a class="dropdownlink" href="{{$left_sidebar_menu['url']}}">{{$left_sidebar_menu['title']}}
                                    @if($left_sidebar_menu['left_sidebar_droopdown'])
                                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                    @endif</a>
                                @if($left_sidebar_menu['childrens'] & $left_sidebar_menu['left_sidebar_droopdown'])
                                    <ul class="submenuItems dropdown">
                                        @foreach($left_sidebar_menu['left_sidebar_droopdown'] as $left_sidebar_droopdown)
                                            <li>
                                                <a class="" href="{{$left_sidebar_droopdown['url']}}">{{$left_sidebar_droopdown['title']}}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif
                            </li>
                        @endforeach
                    @endif
                @endforeach
            </ul>
            <div>
                <form action="" class="form-search form-search--violet">
                    <input type="text" placeholder="Шукати: aртисти, події">
                    <button class="btn"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <div class="col-md-9 col-lg-9 hidden-xs">
            <div class="b-l">
                <div class="menu__cards mt-3 mt-0-md">
                    <div class="row">
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <a href="#" class="card ">
                                <div class="card-img-marker">
                                    <p class="card-marker-date-text">Дата проведення</p>
                                    <p class="card-marker-date">07-06</p>
                                    <p class="card-marker-month">Вересня</p>
                                    <p class="card-marker-time-text">Час проведення</p>
                                    <p class="card-marker-time">15.30-16.00</p>
                                </div>
                                <div class="card__img card-img-now">
                                    <img src="{{asset('images/card-image-1.jpg')}}"
                                         data-lg="{{asset('images/card-image-1.jpg')}}"
                                         data-md="{{asset('images/card-image-1.jpg')}}"
                                         data-sm="{{asset('images/card-image-1.jpg')}}"
                                         alt="" class="blurryload">
                                </div>
                                <div class="card__overlay">
                                    <div class="card__description ">
                                        <div class="card__title">Метеорологи прогнозують у Львові
                                            найсніжнішу зиму за останні 12 років
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <a href="#" class="card ">
                                <div class="card-img-marker">
                                    <p class="card-marker-date-text">Дата проведення</p>
                                    <p class="card-marker-date">07-06</p>
                                    <p class="card-marker-month">Вересня</p>
                                    <p class="card-marker-time-text">Час проведення</p>
                                    <p class="card-marker-time">15.30-16.00</p>
                                </div>
                                <div class="card__img card-img-now">
                                    <img src="{{asset('images/card-image-1.jpg')}}"
                                         data-lg="{{asset('images/card-image-1.jpg')}}"
                                         data-md="{{asset('images/card-image-1.jpg')}}"
                                         data-sm="{{asset('images/card-image-1.jpg')}}"
                                         alt="" class="blurryload">
                                </div>
                                <div class="card__overlay">
                                    <div class="card__description ">
                                        <div class="card__title">Метеорологи прогнозують у Львові
                                            найсніжнішу зиму за останні 12 років
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-lg-3">
                            <a href="#" class="card card-small">
                                <div class="card-img-marker-small">
                                    <p class="card-marker-date-small">07-06</p>
                                    <p class="card-marker-month-small">Вересня</p>
                                </div>
                                <div class="card__img card-img-now">
                                    <img src="{{asset('images/card-image-1.jpg')}}"
                                         data-lg="{{asset('images/card-image-1.jpg')}}"
                                         data-md="{{asset('images/card-image-1.jpg')}}"
                                         data-sm="{{asset('images/card-image-1.jpg')}}"
                                         alt="" class="blurryload">
                                </div>
                                <div class="card__overlay card-overlay-small">
                                    <div class="card__description ">

                                        <div class="card-block-class">Подія</div>
                                        <div class="card__title-small">Дні мистецтва перформанс у
                                            Львові 2017
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-lg-3">
                            <a href="#" class="card card-small">
                                <div class="card-img-marker-small">
                                    <p class="card-marker-date-small">07-06</p>
                                    <p class="card-marker-month-small">Вересня</p>
                                </div>
                                <div class="card__img card-img-now">
                                    <img src="{{asset('images/card-image-1.jpg')}}"
                                         data-lg="{{asset('images/card-image-1.jpg')}}"
                                         data-md="{{asset('images/card-image-1.jpg')}}"
                                         data-sm="{{asset('images/card-image-1.jpg')}}"
                                         alt="" class="blurryload">
                                </div>
                                <div class="card__overlay card-overlay-small">
                                    <div class="card__description ">

                                        <div class="card-block-class">Подія</div>
                                        <div class="card__title-small">Дні мистецтва перформанс у
                                            Львові 2017
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-lg-3">
                            <a href="#" class="card card-small">
                                <div class="card-img-marker-small">
                                    <p class="card-marker-date-small">07-06</p>
                                    <p class="card-marker-month-small">Вересня</p>
                                </div>
                                <div class="card__img card-img-now">
                                    <img src="{{asset('images/card-image-1.jpg')}}"
                                         data-lg="{{asset('images/card-image-1.jpg')}}"
                                         data-md="{{asset('images/card-image-1.jpg')}}"
                                         data-sm="{{asset('images/card-image-1.jpg')}}"
                                         alt="" class="blurryload">
                                </div>
                                <div class="card__overlay card-overlay-small">
                                    <div class="card__description ">

                                        <div class="card-block-class">Подія</div>
                                        <div class="card__title-small">Дні мистецтва перформанс у
                                            Львові 2017
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-lg-3">
                            <a href="#" class="card card-small">
                                <div class="card-img-marker-small">
                                    <p class="card-marker-date-small">07-06</p>
                                    <p class="card-marker-month-small">Вересня</p>
                                </div>
                                <div class="card__img card-img-now">
                                    <img src="{{asset('images/card-image-1.jpg')}}"
                                         data-lg="{{asset('images/card-image-1.jpg')}}"
                                         data-md="{{asset('images/card-image-1.jpg')}}"
                                         data-sm="{{asset('images/card-image-1.jpg')}}"
                                         alt="" class="blurryload">
                                </div>
                                <div class="card__overlay card-overlay-small">
                                    <div class="card__description ">

                                        <div class="card-block-class">Подія</div>
                                        <div class="card__title-small">Дні мистецтва перформанс у
                                            Львові 2017
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                {{--<a href="{{route('page-news')}}" class="btn btn--green">Більше подій</a>--}}
            </div>
        </div>
    </div>
    @include('layouts.social')
</div>
      