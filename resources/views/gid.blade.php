@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image: url({{ Voyager::image( $gid->baner_photo ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-2">
                        <img class="circle_image" src="{{ Voyager::image( $gid->avatar ) }}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="label label--blue">@lang('voyager.generic.guide')</div>
                        <h1 class="cover__title">{!! $gid->{"name_$locale"} !!}</h1>
                        <ul class="breadcrumbs">
                            <a href="#" class="label">@lang('voyager.generic.what_to_do')/</a>
                            <a href="{{asset('/tur')}}" class="label">@lang('voyager.generic.tour')/</a>
                            <a href="{{asset('/gids')}}" class="label">@lang('voyager.generic.guide')/</a>
                            <a href="#" class="label">{!! $gid->{"name_$locale"} !!}</a>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-2 left-bar pad star_wars">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <p class="reviews">73 @lang('voyager.generic.reviews')</p>
                <button type="button" class="my_button margin_top">@lang('voyager.generic.order_ex')</button>
                <a href="#" class="review pad">@lang('voyager.generic.review')</a>
                <p class="mb-4 pad">email: {{ $gid->email }}</p>
                <p class="mb-4">тел: {{ $gid->number }}</p>
            </div>
            <ul class="nav nav-tabs col-md-8">
                <li class="active"><a data-toggle="tab" href="#home">Профіль</a></li>
                <li><a data-toggle="tab" href="#menu1">Екскурсії</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h3>Профіль</h3>

                    <div class="col-md-10 bad">
                        <ul class="buttons boxes">
                            <li><a href="#" class="list">@lang('voyager.generic.what_to_do')</a></li>
                            <li><a href="#" class="list">@lang('voyager.generic.location')</a></li>
                            <li><a href="#" class="list">@lang('voyager.generic.guide')</a></li>
                            <li><a href="#" class="list">@lang('voyager.generic.excursion')</a></li>
                        </ul>
                        <div class="text-secondary text-content">
                            <p class="mb-4">{!! $gid->{"title_$locale"}!!}</p>
                        </div>
                        <div class="text-secondary text-content">
                            <p class="mb-3">{!! $gid->{"post_$locale"} !!}</p>
                        </div>
                    </div>
                </div>
                <div id="menu1" class="tab-pane fade bad">
                    <h3>Екскурсії</h3>
                    <div class="container">
                        @foreach($excursions as $excursion)
                            @if($gid->id == $excursion->gid_id)
                                <div class="col-md-6 pad">
                                    <h2 class="">@lang('voyager.generic.ex_guide')</h2>
                                    <div class="row gallery-box">
                                        <div class="col-md-4 image-box">
                                            <div class="image-top">
                                                <p>4.5 <span class="circle-container"><span class="fa fa-star"></span></span> 73 відгуки</p>
                                            </div>
                                            <img src="{{Voyager::image ($excursion->photo)}}" class="image-box-box">

                                        </div>
                                        <div class="col-md-8 gallery-text ">
                                            <div class="">
                                                <p class="read-more">{!! $excursion->{"name_$locale"} !!}</p>
                                                <p class="read-more">{!! $excursion->{"title_$locale"} !!}</p>
                                                </a>
                                            </div>
                                        </div>
                                        <a href="/tur/excursions/{{ $excursion->slug }}" class="button-read-more">Детальніше></a>
                                    </div>
                                    @endif
                                    @endforeach
                                </div>
                    </div>
                </div>
            </div>


            </div>
        </div>

    </div>




@endsection
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>