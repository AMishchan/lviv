@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url(images/lviv-cover.jpg);">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">Події</h1>
                            <ul class="breadcrumbs">
                            <a href="{{ asset('/') }}" class="label">Головна/</a>
                            <a href="{{ asset('/events') }}"class="label">Події</a></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container events-container">
        <section>
            <div class="row text-center">
                <div class="landing-main-desc col-lg-6 col-lg-offset-3">
                    <br>
                    <br>
                    <p>Львів - культурна столиця України! Це горде звання місто Лева отримало невипадково. Саме тут можна зустріти за чашкою ароматної кави непересічних особистостей, відірватися на повну на фестивалях та позабавлятися під час сімейних свят. Не можемо не згадати і про святкові ярмарки, які кілька разів на рік влаштовують на центральних вулицях міста. Щорічно народні умільці зі всієї України пропонують відвідувачам придбати ексклюзивні вироби ручної роботи. А ще Львів славиться театральними прем'єрами, мистецькими акціями, драйвовими вечірками, а також концертами не лише українських, а й всесвітньо відомих артистів. Тут навіть по-особливому звучить джаз. Не вірите? Тоді запрошуємо Вас до Львова, аби пересвідчитися у цьому!</p>
                </div>
            </div>
            <h2>Рекомендовані події</h2>
            <div class="row events-heap">
                @foreach($developments as $development)
                <div class="col-lg-8">
                    <div class="landing-event-main div-fill-img"
                         style="background-image: url({{ Voyager::image( $development->photo3 ) }});">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-month">{{$development->name}}</p>
                            <p class="card-marker-date-text">Дата проведення</p>
                            <p class="card-marker-month">{{$development->date_on_off}}</p>
                            <p class="card-marker-time-text">Час проведення</p>
                            <p class="card-marker-time">{{$development->time}}</p>
                        </div><a class="btn btn--green" href="/event/{{ $development->slug }}">Перейти до події</a>
                    </div>

                </div>
                @endforeach
                @foreach($developments as $development)
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url({{ Voyager::image( $development->photo3 ) }})">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-month">{{$development->name}}</p>
                            <p class="card-marker-month">{{$development->date_on}}</p>
                            <p class="card-marker-month">{{$development->time}}</p>
                        </div><a class="btn btn--green" href="/event/{{ $development->slug }}">Перейти до події</a>
                    </div>
                </div>
                @endforeach
                    <div class="col-md-10">
                        <a href="#" id="box_end">Дивитись більше</a>
                    </div>
            </div>
        </section>
        <section>
            <h2>Інші події</h2>
            @foreach($developments as $development)
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url({{ Voyager::image( $development->photo3 ) }})">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-month">{{$development->name}}</p>
                            <p class="card-marker-month">{{$development->date_on}}</p>
                            <p class="card-marker-month">{{$development->time}}</p>
                        </div><a class="btn btn--green" href="/event/{{ $development->slug }}">Перейти до події</a>
                    </div>
                </div>
            @endforeach
            <div class="col-md-10">
                <a href="#" id="box_end">Дивитись більше</a>
            </div>
        </section>
    </div>

    @include('maps.searchMap')


@endsection