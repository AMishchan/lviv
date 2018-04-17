@extends('layouts.front')
@section('content')

    @include('layouts.banners.banner')
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                <ul class="breadcrumbs">
                    <li><a class="link link--blue"
                           href="https://travel-assets.devqub.com/page-your-lviv.html#">Головна</a></li>


                    <li>Твій Львів</li>
                </ul>
                <div class="mb-1 text-content text-secondary">
                    <p>Якщо ви завітали до Львова на довший час, то майте на увазі, що існують різноманітні комбінації
                        проїздних карток терміном на місяць чи більше
                        <br><br>Увага! Львів став першим містом в Україні, де запроваджено безготівкову систему
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
            </div>
        </div>
    </section>
  @include('layouts.interested')
@endsection