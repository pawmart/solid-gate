<!-- Header Area -->
<header class="header" >
    <div class="header-topbar">
        <div class="container">
            <div class="topbar-row">
                <div class="topbar-contact">
                    <div class="phone-contact">
                        <i class="fa fa-phone"></i>
                        <span>+880 1234 56789</span>
                    </div>
                    <div class="email-contact">
                        <i class="fa fa-envelope"></i>
                        <a href="mailto:info@solid-gate.eu"><span>info@solid-gate.eu</span></a>
                    </div>
                </div>
                <div class="language-switcher">
                    <div class="current-language">
                        <img src="/static/img/flags/en.png" class="flag-icon">
                        <span>EN</span>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <ul class="language-dropdown">
                        <li data-lang="en">
                            <img src="/static/img/flags/en.png" class="flag-icon">
                            <span>English</span>
                        </li>
                        <li data-lang="es">
                            <img src="/static/img/flags/es.png" class="flag-icon">
                            <span>Español</span>
                        </li>
                        <li data-lang="pl">
                            <img src="/static/img/flags/pl.png" class="flag-icon">
                            <span>Polski</span>
                        </li>
                        <li data-lang="fr">
                            <img src="/static/img/flags/fr.png" class="flag-icon">
                            <span>Français</span>
                        </li>
                    </ul>
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
                                            <li><a href="/catalog#blinds">Blinds</a></li>
                                            <li><a href="/catalog#sliding-doors">Sliding Doors</a></li>
                                            <li><a href="/catalog#entry-doors">Entry Doors</a></li>
                                            <li><a href="/catalog#accessories">Accessories</a></li>
                                            <li><a href="/catalog#colors">Color Palette</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/gallery">Gallery </a></li>
                                    <li><a href="/about">About Us</a></li>
                                    <li><a href="/faq">FAQ</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--/ End Main Menu -->
                    </div>
                    <div class="col-lg-2 col-12">
                        <div class="get-quote">
                            <a href="/contact" class="btn">{{i18n .lang "get_quote"}}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>
<!-- End Header Area -->


<!-- Link effect script -->
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

<!-- Language switcher script -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const languageSwitcher = document.querySelector('.language-switcher');
        const currentLanguage = document.querySelector('.current-language');
        const languageDropdown = document.querySelector('.language-dropdown');
        const languageOptions = document.querySelectorAll('.language-dropdown li');

        if (currentLanguage) {
            currentLanguage.addEventListener('click', function(e) {
                e.stopPropagation();
                languageSwitcher.classList.toggle('active');
            });
        }

        document.addEventListener('click', function() {
            if (languageSwitcher) {
                languageSwitcher.classList.remove('active');
            }
        });

        if (languageDropdown) {
            languageDropdown.addEventListener('click', function(e) {
                e.stopPropagation();
            });
        }

        languageOptions.forEach(option => {
            option.addEventListener('click', function() {
                const lang = this.getAttribute('data-lang');
                const flagSrc = this.querySelector('img').src;
                const langText = lang.toUpperCase();

                document.querySelector('.current-language img').src = flagSrc;
                document.querySelector('.current-language span').textContent = langText;

                languageSwitcher.classList.remove('active');

                redirectToLanguage(lang);
            });
        });

        function getCurrentLanguage() {
            const host = window.location.host;
            const match = host.match(/^([a-z]{2})\./);
            return match ? match[1] : 'en';
        }

        function redirectToLanguage(lang) {
            const protocol = window.location.protocol;
            const pathname = window.location.pathname;
            const host = window.location.host;

            const baseDomain = host.replace(/^[a-z]{2}\./, '');

            let newHost;
            if (lang === 'en') {
                newHost = baseDomain;
            } else {
                newHost = `${lang}.${baseDomain}`;
            }

            window.location.href = `${protocol}//${newHost}${pathname}`;
        }

        function setInitialLanguage() {
            const currentLang = getCurrentLanguage();
            const langOption = document.querySelector(`.language-dropdown li[data-lang="${currentLang}"]`);

            if (langOption) {
                const flagSrc = langOption.querySelector('img').src;
                document.querySelector('.current-language img').src = flagSrc;
                document.querySelector('.current-language span').textContent = currentLang.toUpperCase();
            }
        }

        setInitialLanguage();
    });
</script>

