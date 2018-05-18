@extends('voyager::master')

@section('css')

    @include('voyager::compass.includes.styles')
    
@stop

@section('page_header')

@stop

@section('content')

    <div id="gradient_bg"></div>

    <div class="container-fluid">
        @include('voyager::alerts')
    </div>

    <div class="page-content compass container-fluid">
        <section class="section pb-3">
            <h2 class="section__title">Вже і зараз</h2>
            <div class="row">
                <div  class="col-lg-2">
                        <div>
                            <img style="width: 100%;" src="{{asset('images/card-image-1.jpg')}}">
                        </div>
                        <div>
                                <p>концерт</p>
                                <p>ОЛЕКСАНДР БОЖИК</p>
                               <p>FESTrepublic, Старознесенська, 24-26</p>
                        </div>
                </div>
            </div>
        </section>

    </div>

@stop

{{--@section('javascript')--}}
    {{--<script>--}}
        {{--$('document').ready(function(){--}}
            {{--$('.collapse-head').click(function(){--}}
                {{--var collapseContainer = $(this).parent();--}}
                {{--if(collapseContainer.find('.collapse-content').hasClass('in')){--}}
                    {{--collapseContainer.find('.voyager-angle-up').fadeOut('fast');--}}
                    {{--collapseContainer.find('.voyager-angle-down').fadeIn('slow');--}}
                {{--} else {--}}
                    {{--collapseContainer.find('.voyager-angle-down').fadeOut('fast');--}}
                    {{--collapseContainer.find('.voyager-angle-up').fadeIn('slow');--}}
                {{--}--}}
            {{--});--}}
        {{--});--}}
    {{--</script>--}}
    {{--<!-- JS for commands -->--}}
    {{--<script>--}}
        {{----}}
        {{--$(document).ready(function(){--}}
            {{--$('.command').click(function(){--}}
                {{--$(this).find('.cmd_form').slideDown(); --}}
                {{--$(this).addClass('more_args');--}}
                {{--$(this).find('input[type="text"]').focus();--}}
            {{--});--}}

            {{--$('.close-output').click(function(){--}}
                {{--$('#commands pre').slideUp();--}}
            {{--});--}}
        {{--});--}}

    {{--</script>--}}

    {{--<!-- JS for logs -->--}}
    {{--<script>--}}
      {{--$(document).ready(function () {--}}
        {{--$('.table-container tr').on('click', function () {--}}
          {{--$('#' + $(this).data('display')).toggle();--}}
        {{--});--}}
        {{--$('#table-log').DataTable({--}}
          {{--"order": [1, 'desc'],--}}
          {{--"stateSave": true,--}}
          {{--"stateSaveCallback": function (settings, data) {--}}
            {{--window.localStorage.setItem("datatable", JSON.stringify(data));--}}
          {{--},--}}
          {{--"stateLoadCallback": function (settings) {--}}
            {{--var data = JSON.parse(window.localStorage.getItem("datatable"));--}}
            {{--if (data) data.start = 0;--}}
            {{--return data;--}}
          {{--}--}}
        {{--});--}}
        {{--$('#delete-log, #delete-all-log').click(function () {--}}
          {{--return confirm('Are you sure?');--}}
        {{--});--}}
      {{--});--}}
    {{--</script>--}}
{{--@stop--}}
