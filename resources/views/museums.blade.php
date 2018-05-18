@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url(images/lviv-cover.jpg);">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">Музеї</h1>
                            <ul class="breadcrumbs">
                                <a href="/" class="label">Головна/</a>
                                <a href="#" class="label">Що робити/</a>
                                <a href="{{ asset('/museums') }}" class="label">Музеї</a>
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
                    <li><a href="{{asset('/museums')}}" class="list">Музеї</a></li>
                </ul>
            </div>
            <div class="row section4">
                <div class="col-md-2">
                </div>
                <div class="col-md-10">
                    <div class="col-md-10">
                        <div class="text-secondary text-content">
                            <p class="mb-4">Львов - это не только город-музей под открытым небом, но и город музеев. Не один день придется потратить, чтобы осмотреть все экспозиции львовских музеев, от картинных галерей с картинами XIV века и современных галерей, в музее-аптеке, музее - арсенал, музее шоколада

                            </p>
                        </div>
                        <div class="text-secondary text-content">
                            <p class="mb-3">Важнейшей составляющей любого туристического центра являются просветительские учреждения, а именно – музей. Традиционные исторические музеи, этнографические выставки, коллекции оружия, одежды, мебели, выставки картин и скульптур – все это как нельзя лучше передает богатейшую историю Львова.

                                Но в нашем списке нет места стандартным музеям. Здесь можно узнать о более интересных заведениях. Львов полон не только обычными выставками, но и креативными галереями, музеями и экспозициями. И действительно, такой необычный город не мог не организовать у себя десяток-другой по-настоящему интересных и полезных мест для всех поклонников истории, искусства и культуры.

                                А кроме мест, где можно посмотреть на экспонаты, во Львове есть и места, где их можно приобрести. Помимо множества сувенирных магазинчиков, разбросанных по всему центру, тут есть креативные галереи, одновременно показывающие и продающие объекты искусства.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h2 class="row section__title col-md-10">Найвідоміші музеї Львова</h2>
    </div>
    <div class="container">
        <div class="row">
            @foreach($museums as $museum)
            <div class="col-sm-6 col-md-4">
                <a href="/museums/{{ $museum->slug }}" class="card ">
                    <div class="card__img">
                        <img src="{{Voyager::image($museum->photo1)}}" data-lg="images/card-image-1.jpg"
                             data-md="images/card-image-1.jpg" data-sm="images/card-image-1.jpg" alt=""
                             class="blurryload">
                    </div>
                    <div class="card__overlay">
                        <div class="card__description card__description--short">
                            <div class="card__type label label--violet">музеї</div>

                            <div class="card__title">{{$museum->name}}</div>
                            <ul class="card__info">
                                <li><i class="fa fa-map-marker" aria-hidden="true"></i>{{$museum->address}}
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