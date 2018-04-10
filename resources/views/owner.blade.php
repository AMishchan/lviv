@extends('app')

@section('content')

    @if (Session::has('message'))
        <div class="alert alert-info">{{ Session::get('message') }}</div>
    @endif

    @extends('maps')
    <!-- Bootstrap шаблон... -->
    <div class="panel-body" display="none">

        <form action="{{ url('owner/store') }}" method="post" class="form-horizontal" display="none">
        {{ csrf_field() }}

            <div class="form-group">
                <label for="google_id" class="col-sm-3 control-label">Google id</label>

                <div class="col-sm-6">
                    <input type="text" name="google_id"  id="google_id"  class="form-control">
                </div>
            </div>

            <div class="form-group">
                <label for="name_owner" class="col-sm-3 control-label">Name</label>

                <div class="col-sm-6">
                    <input type="text" name="name_owner" id="name_owner"  class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-sm-3 control-label">Address</label>

                <div class="col-sm-6">
                    <input type="text" name="address" id="address" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="site" class="col-sm-3 control-label">Site</label>

                <div class="col-sm-6">
                    <input type="text" name="site" id="site" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="number" class="col-sm-3 control-label">Number</label>

                <div class="col-sm-6">
                    <input type="text" name="number" id="number" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="schedule" class="col-sm-3 control-label">Schedule</label>

                <div class="col-sm-6">
                    <input type="text" name="schedule" id="schedule"  class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-sm-3 control-label">Description</label>

                <div class="col-sm-6">
                    <input type="text" name="description" id="description" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="photo" class="col-sm-3 control-label">Photo</label>

                <div class="col-sm-6">
                    <input type="text" name="photo" id="photo"  class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="rating" class="col-sm-3 control-label">Rating</label>

                <div class="col-sm-6">
                    <input type="text" name="rating" id="rating" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="reviews" class="col-sm-3 control-label">Reviews</label>

                <div class="col-sm-6">
                    <input type="text" name="reviews" id="reviews" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="lat" class="col-sm-3 control-label">lat</label>

                <div class="col-sm-6">
                    <input type="text" name="lat" id="lat" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="long" class="col-sm-3 control-label">long</label>

                <div class="col-sm-6">
                    <input type="text" name="long" id="long"  class="form-control">
                </div>
            </div>


            <!-- Кнопка добавления задачи -->
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-default">
                        <i class="fa fa-plus"></i> Добавить задачу
                    </button>
                </div>
            </div>
        </form>
    </div>

    <div id="map"></div>



    <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyCXAHs0SNq3AcHYc6EQ-cfkEg0-knOx6_E&sensor=true_OR_false"></script>
@endsection