@extends('layouts.front')
@section('content')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <div class="cover" style="background-image: url({{Voyager::image($teatr->banner_photo)}});">
        <div class="container">
            <div class="cover__content">
                <div class="row">
                    <div class="col-md-8 col-md-offset-3">
                        <div class="label label--blue">{!!$teatr->{"type_$locale"}!!}</div>
                        <h1 class="cover__title new_fonts">{!!$teatr->{"name_$locale"}!!}</h1>
                        <ul class="breadcrumbs">
                            <a href="/teatrs" class="label">@lang('voyager.generic.teatrs')/</a>
                            <a href="#" class="label">{!!$teatr->{"name_$locale"}!!}</a>
                        </ul>
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
                <p class="reviews">73  @lang('voyager.generic.reviews')</p>
            </div>
            <div class="col-md-8 col-md-offset-1 pad">
                <ul class="buttons">
                    <li><a href="#" class="list">@lang('voyager.generic.what_to_do')</a></li>
                    <li><a href="#" class="list">@lang('voyager.generic.location')</a></li>
                    <li><a href="#" class="list">@lang('voyager.generic.teatrs')</a></li>

                </ul>
            </div>
        </div>

    </div>
    <div class="container">
        <div class="row ">
            <div class="col-md-2">
                <a href="#" class="review row">@lang('voyager.generic.review')</a>
            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <button type="button" class="row my_button_white">@lang('voyager.generic.location')<i class="fa fa-map-marker"></i></button>
                <div class="row adress_block">
                    <p>@lang('voyager.generic.address'):</p>
                    <p>{!!$teatr->{"address_$locale"}!!}</p>
                </div>
                <div class="row schedule_block">
                    <p>@lang('voyager.generic.shedule'):</p>
                   <p>{!!$teatr->{"schedule_$locale"}!!}</p>
                </div>
                <button type="button" class="row my_button_white">@lang('voyager.generic.visite')<i class="fa fa-facebook"></i></button>
            </div>
            <div class="col-md-8 col-md-offset-1">
                <div class="text-secondary text-content">
                    <p class="mb-4">{!!$teatr->{"title_$locale"}!!}</p>
                </div>
                <div class="text-secondary text-content toggle_text hide_fun">
                    {!!$teatr->{"post_$locale"}!!}
                </div>
                <input type="button" value="@lang('voyager.generic.more')" class="col-md-4 tuggle_button2 pad_zero">
            </div>
            <div class="col-md-8 col-md-offset-3">
                <div class="images_gallery">
                    <img style="width: 100%" class="mySlides" src="{{Voyager::image($teatr->photo1)}}">
                    <img style="width: 100%" class="mySlides" src="{{Voyager::image($teatr->photo2)}}">
                    <img style="width: 100%" class="mySlides" src="{{Voyager::image($teatr->photo3)}}">
                    <div class="gallery_button_left" onclick="plusDivs(-1)">&#10094;</div>
                    <div class="gallery_button_right" onclick="plusDivs(1)">&#10095;</div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <p class="head_p">Події</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 first_block_container">
                <img src="http://www.divosad.com.ua/photos/large/rozy-angliyskie-angliyskaya-grexam-tomas-11011498.jpg">
                <div class="first_block col-md-8">
                    <p>Дата проведення</p>
                    <p>23</p>
                    <p>Час проведення</p>
                    <p>15.30-16.00</p>
                </div>
                <div class="second_block col-md-4">
                    <p>Квітень</p>
                    <p>2017</p>
                </div>
            </div>
            <div class="col-md-9">
                <div class="col-md-8">
                    <div class="row half_container">
                        <p>Майстер-класс</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias blanditiis corporis
                            dolor enim, exercitationem harum hic in iste labore laborum nesciunt, nulla obcaecati
                            quia, quo quos ullam ut. Maiores, nostrum.</p>

                    </div>
                </div>

            </div>

        </div>
        <a href="#" class="col-md-10 col-md-offset-2 hot">Детальніше</a>
    </div>
    @include('maps.searchMap')
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-2 int_text pad">
                <p class="pad">@lang('voyager.generic.interest')</p>
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