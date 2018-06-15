<div class="menu" id="business">
    <a href="#" class="btn-menu-back visible-xs visible-sm">Назад</a>
    <div class="row">
        <div class="col-sm-10 col-md-12 col-lg-12 hidden-xs">
            <h3>Бізнес новини</h3>
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-6">
                    <div class="card ">
                        <div class="card__img card_size">
                            <img src="{{asset('images/card-image-1.jpg')}}">
                        </div>
                        <div class="overlay_business">
                            <div class="business_text">
                                <p>-<a href="#">Заплонувати коференцію у Львові</a></p>
                                <p>-<a href="#">Про LCB</a></p>
                                <p>-<a href="#">Календар подій - комерційне застосування</a></p>
                                <p>-<a href="#">Реалізовані події (Амбасадори)</a></p>
                                <p>-<a href="#">Замовити FAM-тур</a></p>
                                <p>-<a href="#">Локації для проведення комерційних подій у Львові</a></p>
                            </div>
                        </div>
                        <div class="text_overlay">
                            <p>Lviv Convention Bureau</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="card__img ">
                            <img src="{{asset('images/card-image-1.jpg')}}">
                        </div>
                        <div class="overlay_business">
                            <div class="business_text">
                                <p>-<a href="#">Чому Львів</a></p>
                                <p>-<a href="#">Пріорітетні галузі</a></p>
                                <p>-<a href="#">Інвестиційні проекти</a></p>
                                <p>-<a href="#">Професійні події</a></p>
                                <p>-<a href="#">Блог з основними фактами</a></p>
                            </div>
                        </div>
                        <div class="text_overlay">
                            <p>Invest in Lviv</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row businnes-row">
                <a href="{{route('business')}}" class="btn btn--green">Більше</a>
                <a href="{{route('categoryselect')}}" class="btn btn--green pull-right">Додати власний об'єкт</a>
            </div>
        </div>
    </div>
 @include('layouts.social')


</div>