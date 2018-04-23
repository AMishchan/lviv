@extends('layouts.front')
@section('content')

    <div class="cover" style="background-image: url({{ Voyager::image( $gid->baner_photo ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Гід</div>
                            <h1 class="cover__title">{{ $gid->name }}</h1>
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
                        <a href="#" class="label">Гід </a>
                    </ul>
                    <img src="{{ Voyager::image( $gid->avatar ) }}" style="width:50%">
                    <div class="text-secondary text-content">
                        <p class="mb-4">email: {{ $gid->email }}</p>
                        <p class="mb-4">тел: {{ $gid->number }}</p>
                    </div>


                    <div class="text-secondary text-content">
                        <p class="mb-4">{{ $gid->title }}</p>
                    </div>
                    <div class="text-secondary text-content">
                        <p class="mb-3">{!! $gid->post !!}</p>
                    </div>




                </div>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="container">
            <h2 class="section__title">Гиды</h2>

            <div class="row">
                @foreach($gids as $gid)
                    <div class="col-md-3">
                        <a href="/tur/gids/{{ $gid->slug }}">
                            <img src="{{ Voyager::image( $gid->avatar ) }}" style="width:100%">
                            <span>{{ $gid->name }}</span>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>

    </section>
@endsection