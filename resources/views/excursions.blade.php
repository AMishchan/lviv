@extends('layouts.front')
@section('content')

    <div class="cover" style="background-image: url({{ Voyager::image( $excursion->baner_photo ) }});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-10 col-lg-8 col-md-offset-1 col-lg-offset-2">
                        <div class="d-i-block">
                            <div class="label label--blue mb-1">Екскурсії</div>
                            <h1 class="cover__title new_fonts">{!! $excursion->{"name_$locale"}!!}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-2 star_wars pad">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <p class="reviews">73 @lang('voyager.generic.reviews')</p>
            </div>
            <div class="col-md-8 pad">
                <ul class="buttons">
                    <li><a href="#" class="list">@lang('voyager.generic.what_to_do')</a></li>
                    <li><a href="#" class="list">@lang('voyager.generic.location')</a></li>
                    <li><a href="#" class="list">@lang('voyager.generic.guide')</a></li>
                    <li><a href="#" class="list">@lang('voyager.generic.excursion')</a></li>
                </ul>
            </div>
        </div>
        <div class="row section3">
            <div class="col-md-2 section3_but">
                <a href="#" class="review">@lang('voyager.generic.review')</a>
                <button type="button" class="my_button margin_top">@lang('voyager.generic.order_ex')</button>
                <a href="#"><button type="button" class="margin_top my_button2">@lang('voyager.generic.tours')</button></a>
                <a href="#"><button type="button" class="my_button2">@lang('voyager.generic.guide_page')</button></a>
                {{--<p class="mb-4">email: {{ $gid->email }}</p>--}}
                {{--<p class="mb-4">тел: {{ $gid->number }}</p>--}}
            </div>
            <div class="col-md-9">
                <div class="text-secondary text-content">
                    <p class="mb-4">{!! $excursion->{"title_$locale"}!!}</p>
                </div>
                <div class="text-secondary text-content toggle_text hide_fun">
                    {!!$excursion->{"post_$locale"}!!}
                </div>
                <input type="button" value="@lang('voyager.generic.more')" class="col-md-4 tuggle_button2 pad_zero">
            </div>
        </div>
        <div class="mb-4">
            <div class="row">
                <div class="col-md-10">
                    <ul class="breadcrumbs">
                        <a href="#" class="label">@lang('voyager.generic.what_to_do')</a>
                        <a href="#" class="label">@lang('voyager.generic.location')</a>
                        <a href="#" class="label">Екскурсії </a>
                    </ul>
                </div>

                    <div class="container">
                        <div class="row">

                            <div class="col-md-9 col-md-offset-2">
                                <div class="images_gallery">
                                    <img style="width: 100%" class="mySlides" src="{{Voyager::image($excursion->photo)}}">
                                    <img style="width: 100%" class="mySlides" src="{{Voyager::image($excursion->photo1)}}">
                                    <img style="width: 100%" class="mySlides" src="{{Voyager::image($excursion->photo2)}}">
                                    <div class="gallery_button_left" onclick="plusDivs(-1)">&#10094;</div>
                                    <div class="gallery_button_right" onclick="plusDivs(1)">&#10095;</div>
                                </div>
                            </div>
                        </div>
                    </div>

            </div>
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
    <div class="container">
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
                    $(this).val("Сховати")
                }
                else{
                    $(this).val("@lang('voyager.generic.more')")
                }
            });
        });

    </script>
    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            if (n > x.length) {slideIndex = 1}
            if (n < 1) {slideIndex = x.length}
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex-1].style.display = "block";
        }
    </script>
@endsection