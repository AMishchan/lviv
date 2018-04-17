@extends('layouts.front')
@section('content')
    @include('layouts.banners.banner')

    <div class="container events-container">
        <section>
            <div class="row text-center">
                <div class="landing-main-desc col-lg-6 col-lg-offset-3">
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et
                    dolore magna aliqua. Ut
                    enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                    consequat.
                    Duis aute irure dolor in
                    reprehenderit in voluptate velit esse cillum dolore eu fugiat
                    nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                    mollit anim id est laborum."
                </div>
            </div>
            <h2>Рекомендовані події</h2>
            <div class="row events-heap">
                <div class="col-lg-8">
                    <div class="landing-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date-text">Дата проведення</p>
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                            <p class="card-marker-time-text">Час проведення</p>
                            <p class="card-marker-time">15.30-16.00</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>

                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="add-event-main div-fill-img"
                         style="background-image: url('{{asset('images/landing-banners')}}/banerbfest.png');">
                        <div class="card-img-marker landing-event-main__card-img-marker">
                            <p class="card-marker-date">07-06</p>
                            <p class="card-marker-month">Вересня</p>
                        </div><a class="btn btn--green" href="{{route('event')}}">Перейти до події</a>
                    </div>
                </div>
                <div class="container">
                    <a href="#">Дивитись більше</a>
                </div>
            </div>
        </section>
        <section>
            <h2>Інші події</h2>
        </section>
    </div>
    @include('maps.searchMap')

@endsection