@extends('layouts.front')
@section('content')
    @if (Session::has('message'))
        <div class="alert alert-info">{{ Session::get('message') }}</div>
    @endif
    @extends('maps')
    <script src="{{asset('/libs/ckeditor/ckeditor.js')}}"></script>
    <div class="container"><p id="qq"></pid>
        <!-- Bootstrap шаблон... -->
        <div class="panel-body" display="none">
            <form action="{{ url('owner/update') }}" method="post" class="form-horizontal">
                {{ csrf_field() }}
                @foreach($objectInfo as $key => $val)
                    @if(preg_match('/photo/', $key))
                        @php
                            $path = str_replace(['\\', '"' , '[', ']'], "", $val);
                        @endphp
                        <div class="form-group  col-md-12">
                            <label for="name">Банер картинка</label>
                            <img src="{{asset("/storage/$path")}}"
                                 style="max-width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;">
                            <input type="file" name="{{$key}}" accept="image/*">
                        </div>
                    @elseif(preg_match('/post/', $key))
                        <div class="form-group  col-md-12">
                            <label for="name">{{$key}}</label>
                            <textarea name="{{$key}}" id="ownerPostEdit" rows="10" cols="80">
                                   {{$val}}
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
                                    <option>
                                        {{$tag->{"name_$locale"} }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    @else
                        <div class="form-group  col-md-12">
                            <label for="name">{{$key}}</label>
                            <input required="" type="text" class="form-control" name="{{$key}}"
                                   data-slug-forceupdate="true" value="{{$val}}">
                        </div>
                    @endif
                @endforeach
                <button type="submit" class="btn btn--green">Send</button>
            </form>
        </div>
    </div>



@endsection

