@extends('layouts.front')
@section('content')
    <style>
        .owner-h1-holder {
            margin-top: 130px;
            margin-bottom: 30px;
        }
        .owner-link-holder{
            height: 50px;
        }
        .owner-category-holder{
            margin-bottom: 40px;
            margin-top: 40px;
        }
        .modalDialog {
            position: fixed;
            font-family: Arial, Helvetica, sans-serif;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: rgba(0,0,0,0.8);
            z-index: 99999;
            -webkit-transition: opacity 400ms ease-in;
            -moz-transition: opacity 400ms ease-in;
            transition: opacity 400ms ease-in;
            display: none;
            pointer-events: none;
        }

        .modalDialog:target {
            display: block;
            pointer-events: auto;
        }

        .modalDialog > div {
            width: 400px;
            position: relative;
            margin: 10% auto;
            padding: 39px 20px 13px 20px;
            border-radius: 10px;
            background: #fff;
            height: fit-content;
        }

        .close {
            background: #606061;
            color: #FFFFFF;
            line-height: 25px;
            position: absolute;
            right: -12px;
            text-align: center;
            top: -10px;
            width: 24px;
            text-decoration: none;
            font-weight: bold;
            -webkit-border-radius: 12px;
            -moz-border-radius: 12px;
            border-radius: 12px;
            -moz-box-shadow: 1px 1px 3px #000;
            -webkit-box-shadow: 1px 1px 3px #000;
            box-shadow: 1px 1px 3px #000;
        }

        .close:hover { background: #00d9ff; }
       #openModal  input {
            display: block;
            height: 40px;
            border: 2px solid #3e8436;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
            outline: none;
            background: transparent;
            padding: 0 20px;
            width: 100%;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border-radius: 2px;
        }
        .owner-h1-holder-bottom{
            margin-bottom: 20px;
            margin-top: 60px;
            margin-right: 20px;
        }
        .alert-warning {
            color: #8a6d3b;
            background-color: #fcf8e3;
            border-color: #faebcc;
        }
        .alert-dismissible .close {
            position: relative;
            top: -2px;
            right: -21px;
            color: inherit;
        }

        .close {
            text-decoration: none !important;
            font-size: 18px !important;
            line-height: 1.2;
        }
        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            backgroun:#ecdbbe;
        }
    </style>
    <div class="container">
    <div class="owner-h1-holder">
        <h2 class="text-center">Оберіть категорію свого закладу</h2>
    </div>
        @if(Session::has('message'))
            <div class="alert alert-warning fade in alert-dismissible">
               <h2 class="text-center"> {{Session::get('message')}}</h2>
            </div>
        @endif
    <div class="container owner-category-holder">
        @foreach($categoryList as $category)
            @if($category->slug)
            <div class="col-md-3">
                <div class="owner-link-holder text-center">
                    <a class="btn btn--green" href="{{ route('ownerobjectcreate',$category->slug)}}">{{$category->{"name_$locale"} }}</a>
                </div>
            </div>
            @endif
        @endforeach
    </div>
        <div class="owner-h1-holder-bottom">

            <div class="owner-link-holder text-center">
                <button onclick="document.getElementById('id01').style.display='block'" class="w3-btn">
                    <h2 class="text-center">Або відредагуйте вже існуючий об'ект</h2>
                </button>
                <a class="btn btn--green" href="#openModal">Редагувати</a>
                <div id="openModal" class="modalDialog">
                    <div>
                        <a href="#close" title="Вийти" class="close">X</a>
                        <form action="{{ url('owner/update') }}" method="POST" class="form-horizontal">
                            {{ csrf_field() }}
                            <div class="form-group  col-md-12">
                                <label for="email">Email</label>
                                <input required="" type="text" class="form-control" name="email"
                                       data-slug-forceupdate="true" value="" >
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="key">Key</label>
                                <input required="" type="text" class="form-control" name="key"
                                       data-slug-forceupdate="true" value="">
                            </div>
                            <button style="margin-top: 15px" type="submit" class="btn btn--green">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

