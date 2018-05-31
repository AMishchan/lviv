@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url(images/lviv-cover.jpg);">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">Твій Львів</h1>
                            <ul class="breadcrumbs">
                                <a href="#" class="label">Головна /</a>
                                <a href="#" class="label">Твій Львів</a>
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
                <div class="mb-1 text-content text-secondary pad2">
                    <p class="my_pad_title">Якщо ви завітали до Львова на довший час, то майте на увазі, що існують різноманітні комбінації
                        проїздних карток терміном на місяць чи більше
                    </p>
                    <p>Увага! Львів став першим містом в Україні, де запроваджено безготівкову систему
                        розрахунку в електротранспорті міста. З 16 лютого 2017 р. у всіх львівських трамваях та
                        тролейбусах, пасажири матимуть змогу оплатити проїзд через спеціальний QR код – електронну
                        програму для купівлі та компостирування квитка, яку ініціювали та розробили ЛКП
                        «Львівелектротранс» у співпраці із «Приватбанк».</p>
                </div>
                <div>
                    <a href="#" class="label mb-1">Кав’ярня</a>
                    <a href="#" class="label mb-1">Паб</a>
                    <a href="#" class="label mb-1">Ресторація</a>
                    <a href="#" class="label mb-1">Рестбар</a>
                    <a href="#" class="label mb-1">Кава</a>
                    <a href="#" class="label mb-1">Філіжанка</a>
                </div>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/food.svg')}}" alt="">
                        <h2 class="mb-2">Їжа та напої</h2>
                        <p class="text-secondary text-gray mb-2">Львів - це не лише місто-музей, але й місто
                            музеїв.</p>
                        <a href="#" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/monuments.svg')}}" alt="">
                        <h2 class="mb-2">Пам’ятки</h2>
                        <p class="text-secondary text-gray mb-2">Львів – це місто величних пам'яток архітектури</p>
                        <a href="#" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/museums.svg')}}" alt="">
                        <h2 class="mb-2">Музеї та Галереї</h2>
                        <p class="text-secondary text-gray mb-2">Львів - це не лише місто-музей, але й місто музеїв.</p>
                        <a href="#" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/fun.svg')}}" alt="">
                        <h2 class="mb-2">Атракції</h2>
                        <p class="text-secondary text-gray mb-2">Львів - це місто величних свят, та грандіозних
                            фестивалів</p>
                        <a href="https://travel-assets.devqub.com/page-food.html" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/parks.svg')}}" alt="">
                        <h2 class="mb-2">Парки</h2>
                        <p class="text-secondary text-gray mb-2">Величні парки міста Лева, подорож по зеленому місту</p>
                        <a href="https://travel-assets.devqub.com/page-food.html" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images//icons/yl-icons/theaters.svg')}}" alt="">
                        <h2 class="mb-2">Театри/Філармонії</h2>
                        <p class="text-secondary text-gray mb-2">Львів - це місто класичної музики та неймовірних
                            опер</p>
                        <a href="https://travel-assets.devqub.com/page-food.html" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images//icons/yl-icons/places.svg')}}" alt="">
                        <h2 class="mb-2">Громадські місця</h2>
                        <p class="text-secondary text-gray mb-2">Львів - це не лише місто-музей, але й місто музеїв.</p>
                        <a href="https://travel-assets.devqub.com/page-food.html" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/parks.svg')}}" alt="">
                        <h2 class="mb-2">Навколо Львова</h2>
                        <p class="text-secondary text-gray mb-2">Подорож визначними місцями та пам’ятками Львова</p>
                        <a href="https://travel-assets.devqub.com/page-food.html" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="card-icon text-center mb-3 p-2 py-4-lg px-1-lg">
                        <img class="d-i-block mb-2" src="{{asset('images/icons/yl-icons/fun.svg')}}" alt="">
                        <h2 class="mb-2">Тури</h2>
                        <p class="text-secondary text-gray mb-2">Подорож визначними місцями та пам’ятками Львова</p>
                        <a href="https://travel-assets.devqub.com/page-food.html" class="btn btn--green btn--sm">Детальніше</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-offset-2 int_text ">
                    <p class="">@lang('voyager.generic.interest')</p>
                    <nav>
                        <ul class="int_list">
                            <li><a href="#">@lang('voyager.generic.what_to_do')</a></li>
                            <li><a href="#">@lang('voyager.generic.articles')</a></li>
                            <li><a href="{{asset('/museums')}}">@lang('voyager.generic.museums')</a></li>
                            <li><a href="#">@lang('voyager.generic.event')</a></li>
                            <li><a href="#">@lang('voyager.generic.excursions')</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="card card--sq">
                        <div class="card__img">
                            <img src="../../images/card-coloured-image-4.jpg" data-lg="images/card-coloured-image-4.jpg"
                                 data-md="images/card-coloured-image-4.jpg" data-sm="images/card-coloured-image-4.jpg"
                                 alt="" class="blurryload">
                        </div>
                        <div class="card__colored card__colored--green">
                            <div class="int_image text-white"><p>@lang('voyager.generic.event')</p><p>Фестиваль</p></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
@endsection