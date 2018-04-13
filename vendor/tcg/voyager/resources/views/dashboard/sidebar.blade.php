<div class="side-menu sidebar-inverse">
    <nav class="navbar navbar-default" role="navigation">
        <div class="side-menu-container">
            <div class="navbar-header">
                <a class="navbar-brand" href="{{ route('voyager.dashboard') }}">
                    <div class="logo-icon-container">
                        <img src="{{ asset('favicon/favicon.png') }}" alt="Logo Icon">
                    </div>
                    <div class="title">LVIV-TRAVEL</div>
                </a>
            </div><!-- .navbar-header -->

            <div class="panel widget center bgimage"
                 style="background-image:url({{   asset('images/lviv.jpg') }}); background-size: cover; background-position: 0px;">
                <div class="dimmer"></div>
                <div class="panel-content">
                    <h1>{{ ucwords(Auth::user()->name) }}</h1>
                    <p>{{ Auth::user()->email }}</p>

                    <a href="{{ route('voyager.profile') }}" class="btn btn-primary">{{ __('voyager.generic.profile') }}</a>
                    <div style="clear:both"></div>
                </div>
            </div>

        </div>

        {!! menu('admin', 'admin_menu') !!}
    </nav>
</div>
