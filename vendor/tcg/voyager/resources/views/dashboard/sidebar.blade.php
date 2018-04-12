<div class="side-menu sidebar-inverse">
    <nav class="navbar navbar-default" role="navigation">
        <div class="side-menu-container">
            <div class="navbar-header">
                <a class="navbar-brand" href="{{ route('voyager.dashboard') }}">
                    <div class="logo-icon-container">

                            <img src="{{ asset('favicon/favicon.png') }}" alt="Logo Icon">

                    </div>
                    <div class="title">Lviv-travel</div>
                </a>
            </div><!-- .navbar-header -->

            <div class="panel widget center bgimage"
                 style="background-image:url({{ Voyager::image( Voyager::setting('admin.bg_image'), config('voyager.assets_path') . '/images/bg.jpg' ) }}); background-size: cover; background-position: 0px;">
                <div class="dimmer"></div>
                <div class="panel-content">
                    {{--<img src="{{asset('images/default/default.png')}}" class="avatar" alt="{{ Auth::user()->name }} avatar">--}}
                    <h4>{{ ucwords(Auth::user()->name) }}</h4>
                    <p>{{ Auth::user()->email }}</p>

                    <a href="{{ route('voyager.profile') }}" class="btn btn-primary">{{ __('voyager.generic.profile') }}</a>
                    <div style="clear:both"></div>
                </div>
            </div>

        </div>

        {!! menu('admin', 'admin_menu') !!}
    </nav>
</div>
