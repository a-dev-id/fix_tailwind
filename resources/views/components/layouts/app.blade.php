<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    @yield('meta')

    <meta name="google-site-verification" content="">
    <link href="path/to/favicon.ico" type="image/x-icon" rel="icon">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />

    @vite('resources/css/app.css', 'resources/js/app.js')
    @livewireStyles
    @stack('css')
</head>

<body>
    <x-navbar />
    @yield('header')
    {{$slot}}
    <x-footer />

    {{-- js --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"></script>
    <script src="{{asset('js/main.js')}}"></script>

    @livewireScripts
    @stack('js')

    <script>
        $(document).ready(function () {
            function lazyLoad() {
                $('.lazy').each(function () {
                    var imagePos = $(this).offset().top;
                    var windowHeight = $(window).height();
                    var topOfWindow = $(window).scrollTop();
                    if (imagePos < topOfWindow + windowHeight + 100) {
                        $(this).attr('src', $(this).attr('data-src'));
                        $(this).removeClass('lazy');
                    }
                });
            }
            lazyLoad();
            $(window).scroll(function () {
                lazyLoad();
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $(".slick-carousel").slick({
                autoplay: true,
                autoplaySpeed: 3000,
                arrows: false,
                dots: false,
                fade: true,
                pauseOnHover: false,
                adaptiveHeight: true,
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $(".content-carousel").slick({
                autoplay: false,
                arrows: true,
                prevArrow:'<button class="slick-prev absolute top-1/2 -left-3 transform -translate-y-1/2 bg-black text-white w-14 h-14 flex justify-center items-center z-10"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="3" stroke="currentColor" class="w-4 h-4"><path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" /></svg></button>',
                nextArrow:'<button class="slick-next absolute top-1/2 -right-3 transform -translate-y-1/2 bg-black text-white w-14 h-14 flex justify-center items-center z-10"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="3" stroke="currentColor" class="w-4 h-4"><path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" /></svg></button>',
                dots: false,
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: false,
                responsive: [{
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        centerMode: true,
                        centerPadding: "40px",
                    },
                },],
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            AOS.init();
        });
    </script>

</body>

</html>