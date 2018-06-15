@extends('layouts.front')
@section('content')
    <div class="cover" style="background-image:url('{{Voyager::image($page->banner_photo)}}');">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <h1 class="cover__title">{!! $page->{"name_$locale"} !!}</h1>
                            <ul class="breadcrumbs">
                                <a href="/" class="label">@lang('voyager.generic.main')/</a>
                                <a href="#" class="label">@lang('voyager.generic.what_to_do')/</a>
                                <a href="{{ asset('/teatrs') }}" class="label">{!! $page->{"name_$locale"} !!}</a>
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
                    <li><a href="#" class="list">@lang('voyager.generic.what_to_do')</a></li>
                    <li><a href="#" class="list">@lang('voyager.generic.location')</a></li>
                    <li><a href="{{asset('/teatrs')}}" class="list">@lang('voyager.generic.teatrs')</a></li>
                </ul>
            </div>
            <div class="row section4">
                <div class="col-md-2">
                </div>
                <div class="col-md-10">
                    <div class="col-md-10">
                        <div class="text-secondary text-content">
                            <p class="mb-4">{!! $page->{"title_$locale"} !!}</p>
                        </div>
                        <div class="text-secondary text-content">
                            <p class="mb-3">{!! $page->{"post_$locale"} !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h2 class="row section__title col-md-10">@lang('voyager.generic.best_known_teatrs')</h2>
    </div>
    <div class="container">
        <div class="row">
            @foreach($teatrs as $teatr)
                <div class="col-sm-6 col-md-4">
                    <a href="/teatrs/{{ $teatr->slug }}" class="card ">
                        <div class="card__img">
                            <img src="{{Voyager::image($teatr->photo1)}}" data-lg="images/card-image-1.jpg"
                                 data-md="images/card-image-1.jpg" data-sm="images/card-image-1.jpg" alt=""
                                 class="blurryload">
                        </div>
                        <div class="card__overlay">
                            <div class="card__description">
                                <div class="card__type label label--violet">{!!$teatr->{"type_$locale"}!!}</div>

                                <div class="card__title">{!!$teatr->{"name_$locale"}!!}</div>
                                <ul class="card__info">
                                    <li><i class="fa fa-map-marker" aria-hidden="true"></i>{!!$teatr->{"address_$locale"}!!}
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
                <button class="animate">@lang('voyager.generic.more')</button>
            </div>
        </div>
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
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script>
    $(document).ready(function(){
        $(".animate").click(function(){
            $(".image_box2").toggle(1000);
        })
    });

</script>