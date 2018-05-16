@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url(images/lviv-cover.jpg);">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">Громадські місця</h1>
                            <ul class="breadcrumbs">
                                <a href="/" class="label">Головна/</a>
                                <a href="#" class="label">Що робити/</a>
                                <a href="{{ asset('/public-places') }}" class="label">Громадські місця</a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <ul class="buttons btn_padding">
                    <li><a href="#" class="list">Що робити</a></li>
                    <li><a href="#" class="list">Локації</a></li>
                    <li><a href="{{asset('/public-places')}}" class="list">Громадські місця</a></li>
                </ul>
            </div>
            <div class="row section4">
                <div class="col-md-2">
                </div>
                <div class="col-md-10">
                    <div class="col-md-10">
                        <div class="text-secondary text-content">
                            <p class="mb-4">Отдохнуть и расслабиться от обыденности города Вам помогут львовские парки, которых особенно много в центре города. Парки Львова приятно удивят своим уютом, который будет способствовать отдыху. Непосредственной близости от парков часто находятся гостиницы Львова или более экономное проживание в Львове - хостелы Львова. Также в некоторых парках и особенно в их окрестности находятся уютные кафе Львова и рестораны Львова.

                            </p>
                        </div>
                        <div class="text-secondary text-content">
                            <p class="mb-3">Прежде советуем посетить парк «Высокий замок», который находится на замковой горе Львова. С его высоты можно осмотреть широчайшую панораму города, что принесет вам массу впечатлений. Рядом расположен парк "Вознесение" - региональный ландшафтный парк площадью 312,1 га. Интересно, что территория парка расположена именно на водоразделе Балтийского и Черного морей, поэтому во Львове шутят, что с одной стороны горы вода стекает в Черное море, а с другой в Балтийское. Львовяне же называют парк "Вознесение" Кайзервальдом, что дословно с немецкого означает королевский лес. Существует легенда, что когда-то здесь гулял император Австро-Венгерской империи.

                                Есть во Львове и аж три ботанических сада - два принадлежат Львовскому национальному университету имени Ивана Франко, а один Медицинском университета имени Даниила Галицкого. Богатые коллекции растений ботанического сада привлекают роскошным цветением весной, летом и даже осенью. На сайте представлен Виртуальный 3D-тур жемчужиной парковой культуры Львова - известный на всю Европу Стрыйский парк.

                                Особой львовской атмосферой проникнут парк имени Ивана Франко (бывший парк Костюшко). Парк на этом месте был основан и приведено еще в конце XVI века, а в 1799 году он был переоборудован на французский манер. Летом в парке устраивают открытые музыкальные концерты. Правда во Львове этот парк считают студенческим, ведь он расположен напротив здания Львовского национального университета имени Ивана Франко, поэтому Вы можете совместить отдых в парке Львова и созерцания львовской архитектуры.

                                На сайте можно ознакомиться с историей основания парков и легендами, которые связывают с этими местами. Также карта на сайте позволит выбрать оптимальное решение для совмещения прогулки улочками Львова и парками и скверами города.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h2 class="row section__title col-md-10">Найвідоміші Громадські місця Львова</h2>
    </div>
    <div class="container">
        <div class="row">
            @foreach($places as $place)
                <div class="col-sm-6 col-md-4">
                    <a href="/public-places/{{ $place->slug }}" class="card ">
                        <div class="card__img">
                            <img src="{{Voyager::image($place->photo1)}}" data-lg="images/card-image-1.jpg"
                                 data-md="images/card-image-1.jpg" data-sm="images/card-image-1.jpg" alt=""
                                 class="blurryload">
                        </div>
                        <div class="card__overlay">
                            <div class="card__description card__description--short">
                                <div class="card__type label label--violet">Громадські місця</div>

                                <div class="card__title">{{$place->name}}</div>
                                <ul class="card__info">
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>{{$place->address}}
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </a>
                </div>
            @endforeach
        </div>

        {{--то что будет добавляться--}}
        <div class="row">
        </div>
        <div class="row">
            <div class="col-md-10">
                <button class="animate">Дивитись більше</button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-9 col-md-offset-2 int_text">
                <p>Вас це може зацікавити</p>
                <nav>
                    <ul class="int_list">
                        <li><a href="#">Що робити</a></li>
                        <li><a href="#">Цікаві статті</a></li>
                        <li><a href="{{asset('/museums')}}">Музеї</a></li>
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


@endsection
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script>
    $(document).ready(function(){
        $(".animate").click(function(){
            $(".image_box2").toggle(1000);
        })
    });

</script>