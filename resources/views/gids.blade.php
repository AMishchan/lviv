@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image:  url('{{Voyager::image($page->banner_photo)}}');">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">{!! $page->{"name_$locale"} !!}</h1>
                            <ul class="breadcrumbs">
                                <a href="#" class="label">@lang('voyager.generic.main')/</a>
                                <a href="{{ asset('/tur') }}" class="label">Тури/</a>
                                <a href="{{ asset('/gids') }}" class="label">{!! $page->{"name_$locale"} !!}/</a>
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
                <div class="mb-1 text-content text-secondary">
                    <br>
                    <br>
                    <p> {!! $page->{"post_$locale"} !!}</p>
                </div>
            </div>
        </div>
        <section class="section">
            <div class="container">

                <h2 class="section__title">{!! $page->{"name_$locale"} !!}</h2>
                <div class="row section5">
                    <div class="col-md-12">
                        <div class="row">
                            @foreach($gids as $gid)
                                <div class="col-md-6 pad">

                                    <div class="row gallery-box">
                                        <div class="col-md-4 image-box">
                                            <div class="image-top">
                                                <p>4.5 <span class="circle-container"><span class="fa fa-star"></span></span> 73 відгуки</p>
                                            </div>
                                            <img src="{{Voyager::image ($gid->avatar)}}" class="image-box-box">

                                        </div>
                                        <div class="col-md-8 gallery-text ">
                                            <div class="">
                                                    <p class="read-more">{!! $gid->{"name_$locale"} !!}</p>
                                                    <p class="read-more">{!! $gid->{"title_$locale"} !!}</p>
                                                </a>
                                            </div>


                                        </div>
                                        <a href="/gids/gid/{{ $gid->slug }}" class="button-read-more">@lang('voyager.generic.more')</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>


            </div>

        </section>
        <div class="row">
            <div class="col-md-9 col-md-offset-2 int_text">
                <p>@lang('voyager.generic.interest')</p>
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



@endsection