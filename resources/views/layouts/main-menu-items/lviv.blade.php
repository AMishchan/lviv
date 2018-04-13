<div class="menu" id="lviv">
    <a href="#" class="btn-menu-back visible-xs visible-sm">Назад</a>
    <div class="row">
        <div class="col-sm-5 col-md-3 col-lg-3">
            <ul class="accordion-menu menu__subnav menu-trig menu__nav">
                @foreach($data['categories'] as $category)
                    @if($category['template'] == 'lviv' & $category['left_sidebar_menu'] != 0)
                        @foreach($category['left_sidebar_menu'] as $left_sidebar_menu)
                            <li><a class="dropdownlink" href="#">{{$left_sidebar_menu['title']}}
                                    @if($left_sidebar_menu['left_sidebar_droopdown'])
                                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                    @endif</a>
                                @if($left_sidebar_menu['childrens'] & $left_sidebar_menu['left_sidebar_droopdown'])
                                    <ul class="submenuItems dropdown">
                                        @foreach($left_sidebar_menu['left_sidebar_droopdown'] as $left_sidebar_droopdown)
                                            <li>
                                                <a class="" href="#">{{$left_sidebar_droopdown['title']}}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif
                            </li>
                        @endforeach
                    @endif
                @endforeach
            </ul>
        </div>
        <div class="col-sm-7 col-md-9 col-lg-9 hidden-xs">
            <div class="row">
                <h3>Популярні заклади</h3>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="card-img-marker-small">
                            <img src="" alt="">
                        </div>
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description ">
                                <div class="card-lviv-type">Ресторан</div>
                                <div class="card-lviv-name">Кумпель</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="card-img-marker-small">
                            <img src="" alt="">
                        </div>
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description ">
                                <div class="card-lviv-type">Ресторан</div>
                                <div class="card-lviv-name">Кумпель</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="card-img-marker-small">
                            <img src="" alt="">
                        </div>
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description ">
                                <div class="card-lviv-type">Ресторан</div>
                                <div class="card-lviv-name">Кумпель</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="card-img-marker-small">
                            <img src="" alt="">
                        </div>
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description ">
                                <div class="card-lviv-type">Ресторан</div>
                                <div class="card-lviv-name">Кумпель</div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <h3>Рекомендовані місця</h3>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description">
                                <div class="card-lviv-name">Личаківський цвинтар Личаківський цвинтар</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description">
                                <div class="card-lviv-name">Личаківський цвинтар Личаківський цвинтар</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description">
                                <div class="card-lviv-name">Личаківський цвинтар Личаківський цвинтар</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-lg-3">
                    <a href="#" class="card card-small">
                        <div class="place-mark">
                            <span>5.2</span>
                        </div>
                        <div class="card__img card-img-pl">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay card-overlay-small">
                            <div class="card__description">
                                <div class="card-lviv-name">Личаківський цвинтар Личаківський цвинтар</div>
                            </div>
                        </div>
                    </a>
                </div>
                <a href="{{route('your-lviv')}}" class="btn btn--green">Більше</a>
            </div>

        </div>
    </div>
    @include('layouts.social')
</div>