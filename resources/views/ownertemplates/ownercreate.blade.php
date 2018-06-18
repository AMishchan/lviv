@extends('layouts.front')
@section('content')
    @if (Session::has('message'))
        <div class="alert alert-info">{{ Session::get('message') }}</div>
    @endif
    @extends('maps')
    <script src="{{asset('/libs/ckeditor/ckeditor.js')}}"></script>
    <div class="container">

        @if(Session::has('message1'))
            <div class="alert alert-warning fade in alert-dismissible">
                <h2 class="text-center"> {{Session::get('message1')}}</h2>
            </div>
        @endif
        <!-- Bootstrap шаблон... -->
        <input class="btn btn--green" type="button" id="buttonGrub" value="Стырить"/>
        <div class="panel-body" display="none">
            <form action="{{ url("owner/save/{$category}") }}" method="post" class="form-horizontal">
                {{ csrf_field() }}
                @foreach($columns as $key)
                    @if(preg_match('/photo/', $key))
                        <div class="form-group  col-md-12">

                            <label for="name">Банер картинка</label>
                            <img src=""
                                 style="max-width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;">
                            <input type="file" name="{{$key}}" accept="image/*">
                        </div>
                    @elseif(preg_match('/post/', $key))
                        <div class="form-group  col-md-12">
                            <label for="name">{{$key}}</label>
                            <textarea name="{{$key}}" id="ownerPostEdit" rows="10" cols="80">
                      </textarea>
                            <script>
                                CKEDITOR.replace('ownerPostEdit');
                            </script>
                        </div>
                    @elseif(preg_match('/tag/', $key))
                        <div class="form-group  col-md-12">
                            <label for="name">{{$key}}</label>
                            <select class="form-control" name="{{$key}}" tabindex="-1">
                                @foreach($tags as $tag )
                                    <option value="{{$tag->code}}">
                                        {{$tag->{"name_$locale"} }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    @else
                        <div class="form-group  col-md-12">
                            <label for="{{$key}}">{{$key}}</label>
                            <input required="" type="text" class="form-control" name="{{$key}}"
                                   data-slug-forceupdate="true" value="">
                        </div>
                    @endif

                @endforeach
                <button type="submit" class="btn btn--green">Save</button>
            </form>
        </div>
    </div>

    <script>

          $(buttonGrub.onclick = function insertInfoG(){
              var sel = document.querySelector('[class="gm-style-iw"]>div>div>div>div>div').innerText;
              var inp = $('#pac-input');
              inp.val(sel);
              var params = {};
            });

    </script>


@endsection

