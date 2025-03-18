
<!-- Header Area -->
<header class="header" >
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-5 col-12">
                    <!-- Contact -->
                    <!--
                    <ul class="top-link">
                        <li><a href="/about">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                    -->
                    <!-- End Contact -->
                </div>
                <div class="col-lg-6 col-md-7 col-12">
                    <!-- Top Contact -->
                    <ul class="top-contact">
                        <li><i class="fa fa-phone"></i>+880 1234 56789</li>
                        <li><i class="fa fa-envelope"></i><a href="mailto:support@yourmail.com">info@solid-gate.eu</a></li>
                    </ul>
                    <!-- End Top Contact -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-12">
                        <!-- Start Logo -->
                        <div class="logo">
                            <a href="/"><img src="static/img/logo-solid-gate.png" alt="#"></a>
                        </div>
                        <!-- End Logo -->
                        <!-- Mobile Nav -->
                        <div class="mobile-nav"></div>
                        <!-- End Mobile Nav -->
                    </div>
                    <div class="col-lg-7 col-md-9 col-12">
                        <!-- Main Menu -->
                        <div class="main-menu">
                            <nav class="navigation">
                                <ul class="nav menu">
                                    <li><a href="/">Home </a></li>
                                    <li class="active"><a href="/catalog">Catalog <i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="/catalog#double-glazing">Double Glazing Windows</a></li>
                                            <li><a href="/catalog#triple-glazing">Triple Glazing Windows</a></li>
                                            <li><a href="/catalog#sliding-doors">Sliding Doors</a></li>
                                            <li><a href="/catalog#entry-doors">Entry Doors</a></li>
                                            <li><a href="/catalog#accessories">Accessories</a></li>
                                            <li><a href="/catalog#colors">Color Palette</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/gallery">Gallery </a></li>
                                    <li><a href="/about">About Us</a></li>
                                    <li><a href="#">FAQ</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--/ End Main Menu -->
                    </div>
                    <div class="col-lg-2 col-12">
                        <div class="get-quote">
                            <a href="/contact" class="btn">Get a Quote</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>
<!-- End Header Area -->

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const path = window.location.pathname;

        const menuItems = document.querySelectorAll('.nav.menu > li');

        menuItems.forEach(item => {
            item.classList.remove('active');
        });

        menuItems.forEach(item => {
            const link = item.querySelector('a');
            if (link && link.getAttribute('href') !== '/') {
                if (path.includes(link.getAttribute('href'))) {
                    item.classList.add('active');
                }
            } else if (link && link.getAttribute('href') === '/' && path === '/') {
                item.classList.add('active');
            }
        });
    });
</script>