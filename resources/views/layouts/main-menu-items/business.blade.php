<div class="menu" id="business">
    <a href="#" class="btn-menu-back visible-xs visible-sm">Назад</a>
    <div class="row">
        <div class="col-sm-5 col-md-3 col-lg-3">
            <ul class="accordion-menu menu__subnav menu-trig menu__nav">
                @foreach($data['categories'] as $category)
                    @if($category['template'] == 'business' & $category['left_sidebar_menu'] != 0)
                        @foreach($category['left_sidebar_menu'] as $left_sidebar_menu)
                            <li><a class="dropdownlink" href="#">{{$left_sidebar_menu['title']}}
                                    @if($left_sidebar_menu['left_sidebar_droopdown'])
                                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                    @endif
                                </a>
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
                <h3>Бізнес новини</h3>
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a href="#" class="card ">
                        <div class="card__img card-img-now">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__title">У Львові відбулась Літня конференція міжнародної
                                    асоціації
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a href="#" class="card ">
                        <div class="card__img card-img-now">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__title">У Львові відбулась Літня конференція міжнародної
                                    асоціації
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a href="#" class="card ">
                        <div class="card__img card-img-now">
                            <img src="{{asset('images/card-image-1.jpg')}}"
                                 data-lg="{{asset('images/card-image-1.jpg')}}"
                                 data-md="{{asset('images/card-image-1.jpg')}}"
                                 data-sm="{{asset('images/card-image-1.jpg')}}"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__overlay">
                            <div class="card__description ">
                                <div class="card__title">У Львові відбулась Літня конференція міжнародної
                                    асоціації
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <h3>Рекомендовані бізнес події</h3>
                <div class="col-lg-3 visible-lg">
                    <a href="#" class="card ">
                        <div class="events-card-time">
                            <span class="date">07-08</span>
                            <span class="month">Жовтня</span>

                        </div>
                        <div class="card__img">
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
                <div class="col-lg-3 visible-lg">
                    <a href="#" class="card ">
                        <div class="events-card-time">
                            <span class="date">07-08</span>
                            <span class="month">Жовтня</span>

                        </div>
                        <div class="card__img">
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
                <div class="col-lg-3 visible-lg">
                    <a href="#" class="card ">
                        <div class="events-card-time">
                            <span class="date">07-08</span>
                            <span class="month">Жовтня</span>

                        </div>
                        <div class="card__img">
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
                <div class="col-lg-3 visible-lg">
                    <a href="#" class="card ">
                        <div class="events-card-time">
                            <span class="date">07-08</span>
                            <span class="month">Жовтня</span>

                        </div>
                        <div class="card__img">
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
            <a href="{{route('business')}}" class="btn btn--green">Більше</a>
        </div>
    </div>
    @include('layouts.social')
</div>