@extends('layouts.front')
@section('content')

    <div class="cover" style="background-image: url({{ Voyager::image( $excursion->baner_photo ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Екскурсії</div>
                            <h1 class="cover__title">{{ $excursion->name }}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="mb-4">
            <div class="row">
                <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                    <ul class="breadcrumbs">
                        <a href="#" class="label">Що робити </a>
                        <a href="#" class="label">Локації </a>
                        <a href="#" class="label">Екскурсії </a>
                    </ul>

                    <div class="text-secondary text-content">
                        <p class="mb-4">{{ $excursion->title }}</p>
                    </div>
                    <div class="text-secondary text-content">
                        <p class="mb-3">{!! $excursion->post !!}</p>
                    </div>
                    <img src="{{ Voyager::image( $excursion->photo ) }}" style="width:50%">
                    <img src="{{ Voyager::image( $excursion->photo1 ) }}" style="width:50%">
                    <img src="{{ Voyager::image( $excursion->photo2 ) }}" style="width:50%">



                </div>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="container">
            <h2 class="section__title">Гиды</h2>

            <div class="row">
                @foreach($excursions as $excursion)
                    <div class="col-md-3">
                        <a href="/tur/gids/{{ $excursion->slug }}">
                            <img src="{{ Voyager::image( $excursion->photo ) }}" style="width:100%">
                            <span>{{ $excursion->name }}</span>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>

    </section>
@endsection