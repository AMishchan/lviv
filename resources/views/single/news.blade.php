@extends('layouts.front')
@section('content')

    <div class="cover" style="background-image: url({{ Voyager::image( $post->image1 ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">@lang('voyager.generic.news')</div>
                            <h1 class="cover__title new_fonts">{!! $post->{"title_$locale"} !!}</h1>
                            <ul class="breadcrumbs">
                                <li><a class="label" href="#">@lang('voyager.generic.main')</a></li>
                                <li><a class="label" href="#">@lang('voyager.generic.news_city')</a></li>
                                <li><a class="label" href="#">{!! $post->{"title_$locale"} !!}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="mb-4">
            <div class="row">
                <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2 pad">
                    <div class="text-secondary text-content toggle_text hide_fun">
                        <p class="showmore_sizes">{!! $post->{"body_$locale"} !!}</p>
                    </div>
                    <input type="button" value="@lang('voyager.generic.more')" class="col-md-4 tuggle_button2 pad_zero">

                </div>
            </div>
        </div>
    </div>

    <section class="section">
        <div class="container">
            <h2 class="section__title">@lang('voyager.generic.news_city')</h2>

            <div class="row">
                @foreach($posts as $post)
                    <div class="col-sm-6 col-md-4">
                        <a href="/now/page-news/post/{{ $post->slug }}" class="card ">
                            <div class="card__img">
                                <img src="{{Voyager::image($post->image)}}" data-lg="images/card-image-1.jpg"
                                     data-md="images/card-image-1.jpg" data-sm="images/card-image-1.jpg" alt=""
                                     class="blurryload">
                            </div>
                            <div class="card__overlay">
                                <div class="card__description">

                                    <div class="card__title">{!!$post->{"title_$locale"}!!}</div>
                                    <ul class="card__info">


                                    </ul>
                                </div>
                            </div>

                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-offset-2 int_text">
                    <p class="">@lang('voyager.generic.interest')</p>
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

    </section>
@endsection
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
    //    show more text functions
    $(document).ready(function(){
        $(".tuggle_button2").click(function(){
            $(".toggle_text").toggleClass("show_fun");
        });
    });
    $(document).ready(function() {
        $('.tuggle_button2').click(function(){
            if ($(this).val() == "@lang('voyager.generic.more')") {
                $(this).val("@lang('voyager.generic.hide')")
            }
            else{
                $(this).val("@lang('voyager.generic.more')")
            }
        });
    });

</script>