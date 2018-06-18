
<style>
    #map {
        height: 640px;
    }

    /* Optional: Makes the sample page fill the window. */
    html, body {
        height: 50%;
        margin: 0;
        padding: 0;
    }

    .controls {
        background-color: #fff;
        border-radius: 2px;
        border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        height: 29px;
        margin-left: 17px;
        margin-top: 10px;
        outline: none;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
    }

    .controls:focus {
        border-color: #4d90fe;
    }

    .title {
        font-weight: bold;
    }

    #infowindow-content {
        display: none;
    }

    #map #infowindow-content {
        display: inline;
    }

</style>
<section class="section pb-0">
    <div class="container-fluid">
        <h2 class="section__title">Поруч знаходиться</h2>
        <div class="row">
            <div class="col-sm-5 col-lg-4 p-0">
                <div class="bg-blue px-onehalf">
                    <form class="places-form row-flex row-flex--nowrap">
                        <select class="js-select select2-hidden-accessible" name="places" multiple=""
                                data-placeholder="Шукати у Львові…" data-select2-id="1" tabindex="-1"
                                aria-hidden="true">
                            <option></option>
                            <option value="Кумпель">Кумпель</option>
                            <option value="Криївка">Криївка</option>
                            <option value="Масони">Масони</option>
                            <option value="Правда">Правда</option>
                            <option value="Гасова лампа">Гасова лампа</option>
                            <option value="Човен">Човен</option>
                        </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                       data-select2-id="2" style="width: 149.766px;"><span class="selection"><span
                                        class="select2-selection select2-selection--multiple" role="combobox"
                                        aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul
                                            class="select2-selection__rendered"><li
                                                class="select2-search select2-search--inline"><input
                                                    class="select2-search__field" type="search" tabindex="0"
                                                    autocomplete="off" autocorrect="off" autocapitalize="none"
                                                    spellcheck="false" role="textbox" aria-autocomplete="list"
                                                    placeholder=""
                                                    style="width: 0.75em;"></li></ul></span></span><span
                                    class="dropdown-wrapper" aria-hidden="true"></span></span>
                        <button class="btn">Шукати</button>
                    </form>

                    <form ation="" class="row-flex row-flex--between row-flex--wrap px-onehalf">
                        <div class="select-wrapper mb-onehalf col-sm-6 col-md-4"
                             style="background-image: url(images/icons/form-places-icon.svg);">
                            <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                    data-placeholder="Заклади" data-select2-id="3" tabindex="-1" aria-hidden="true">
                                <option value="" data-select2-id="5">Усі (122)</option>
                                <option value="">Готелі (12)</option>
                                <option value="">Хостели (10)</option>
                                <option value="">Апартаменти (40)</option>
                            </select>
                        </div>

                        <div class="select-wrapper mb-onehalf col-sm-6 col-md-4"
                             style="background-image: url(images/icons/form-locaion-icon.svg);">
                            <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                    data-placeholder="Локація" data-select2-id="6" tabindex="-1" aria-hidden="true">
                                <option value="" data-select2-id="8">Усі (122)</option>
                                <option value="">Центр міста (12)</option>
                                <option value="">Сихів (10)</option>
                                <option value="">Левандівка (40)</option>
                            </select>
                        </div>

                        <div class="select-wrapper mb-onehalf col-sm-12 col-md-4"
                             style="background-image: url(images/icons/form-rating-icon.svg);">
                            <select class="js-select-simple select2-hidden-accessible" name="" id=""
                                    data-placeholder="Рейтинг" data-select2-id="9" tabindex="-1" aria-hidden="true">
                                <option value="" data-select2-id="11">5 stars</option>
                                <option value="">4 stars</option>
                                <option value="">3 stars</option>
                                <option value="">2 stars</option>
                                <option value="">1 stars</option>
                            </select>
                        </div>
                    </form>
                </div>


                <div class="places-list">
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="place row-flex row-flex--middle row-flex--nowrap mx-0">
                        <div class="place__img" style="background-image: url(images/place-image.jpg);">
                            <div class="label label--blue">Ресторан</div>
                        </div>
                        <div class="place__info">
                            <h3 class="fz-20 mb-half">Кумпель</h3>
                            <p class="text-secondary text-small">Кумпель – перший ресторан-пивоварня у Львові, пиво
                                в якому ллється рікою...</p>
                            <ul class="info-list info-list--light">

                                <li><i class="icon-location"></i><span>Львів, Площа Ринок, 1</span></li>


                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-sm-7 col-lg-8 p-0">
                <div id="map"></div>
                <div id="infowindow-content">
                    <span id="place-name" class="title"></span><br>Place ID <span id="place-id"></span><br>
                    <span id="place-address"></span>
                </div>

                <script>
                    // This sample uses the Place Autocomplete widget to allow the user to search
                    // for and select a place. The sample then displays an info window containing
                    // the place ID and other information about the place that the user has
                    // selected.

                    // This example requires the Places library. Include the libraries=places
                    // parameter when you first load the API. For example:
                    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

                    function initMap() {
                        var map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: 49.84264208029149, lng: 24.0322703},
                            zoom: 13
                        });

                        var input = document.getElementById('pac-input');

                        var autocomplete = new google.maps.places.Autocomplete(input);
                        autocomplete.bindTo('bounds', map);

                        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

                        var infowindow = new google.maps.InfoWindow();
                        var marker = new google.maps.Marker({
                            map: map
                        });
                        marker.addListener('click', function () {
                            infowindow.open(map, marker);
                        });

                        autocomplete.addListener('place_changed', function () {
                            infowindow.close();
                            var place = autocomplete.getPlace();
                            if (!place.geometry) {
                                return;
                            }

                            if (place.geometry.viewport) {
                                map.fitBounds(place.geometry.viewport);
                            } else {
                                map.setCenter(place.geometry.location);
                                map.setZoom(17);
                            }

                            // Set the position of the marker using the place ID and location.
                            marker.setPlace({
                                placeId: place.place_id,
                                location: place.geometry.location
                            });
                            marker.setVisible(true);

                            document.getElementById('place-name').textContent = place.name;
                            document.getElementById('place-id').textContent = place.place_id;
                            document.getElementById('place-address').textContent =
                                place.formatted_address;
                            infowindow.setContent(document.getElementById('infowindow-content'));
                            infowindow.open(map, marker);
                        });
                    }
                </script>
                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmUcVn8v4mHdwIZKHjc1yvMhkqHU597go&libraries=places&callback=initMap" async defer></script>

            </div>
        </div>
    </div>

</section>