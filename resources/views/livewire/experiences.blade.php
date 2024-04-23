@section('meta')
<title>Document</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:type" content="article" />
<meta property="og:description" content="" />
<meta property="og:image" content="test.jpg" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="">
<meta name="twitter:creator" content="">
<meta name="twitter:title" content="">
<meta name="twitter:description" content="">
<meta name="twitter:image" content="">
<link href="https://examople.com/link" rel="canonical">
@endsection

@section('header')
<header class="slick-carousel shadow-xl">
    <div>
        <div class="h-screen">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/gqnCeVF7buvf4qF7o7B5Yu0kRFzmJr-metaNjI5NDdkMDM2MTAxNDE5NjY2NjIwMy5qcGc=-.jpg" class="lazy w-full h-full object-cover" alt="Image 2">
        </div>
    </div>
    <div>
        <div class="h-screen">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/4XGPw5nwPWmHdJk8fCuO0fL9dOOnWi-metaNjI5NDcyYzE2ZDZhNzY1NDQ5Nzc4MC5qcGc=-.jpg" class="lazy w-full h-full object-cover" alt="Image 2">
        </div>
    </div>
</header>
@endsection

<main>
    {{-- page description section --}}
    <section class="page-description" data-aos="fade-up" data-aos-delay="200">
        <h1 class="main-title">UNIQUE EXPERIENCES IN BALI</h1>
        <p class="mt-4 large:mt-3 wide:mt-4">Serene surroundings, legendary service and top Balinese hospitality - a stay at Ubud luxury resort Hanging Gardens of Bali and its Once-in-a-Lifetime Experiences, promise to create special memories that you will never forget.</p>
    </section>

    <section class="visual-insights">
        <div class="vi-section" data-aos="fade-up" data-aos-delay="200">
            <img class="lazy vi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/aJvmNQ79c5vf4I6qwiEEInTwmGLboy-metadWx0aW1hdGUgbWlsaW9uYWlyZSBoYW5nb3V0LmpwZw==-.jpg" alt="Placeholder Image">
            <div class="vi-text">
                <h2 class="sub-title">Ultimate Millionaire Hangout</h2>
                <div class="line"></div>
                <p>Experience a day of pure indulgence and immerse yourself in a million-dollar view with our resort's exclusive daily pass.</p>
                <a href="" class="main-button">Explore</a>
            </div>
        </div>
    </section>

    <section class="visual-insights bg-white mt-3">
        <div class="vi-section" data-aos="fade-up" data-aos-delay="200">
            <div class="vi-text">
                <h2 class="sub-title">Millionaire Day Pass</h2>
                <div class="line"></div>
                <p>Book a daycation at the iconic Hanging Gardens of Bali, we offer a Day-Pass available to everyone wishing to relax at our jungle resort.</p>
                <a href="" class="main-button">Explore</a>
            </div>
            <img class="lazy vi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/mbee3l1VhzkPm4z71JRcQkvjr8lSZX-metabWlsaW9uYWlyZSBkYXkgcGFzcy5qcGc=-.jpg" alt="Placeholder Image">
        </div>
    </section>

</main>