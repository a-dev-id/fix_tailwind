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
        <h1 class="main-title">BALI FINE DINING<br>THREE ELEMENTS RESTAURANT</h1>
        <p class="mt-4 large:mt-3 wide:mt-4">Certainly one of the best Bali fine dining restaurants. Embark on a one-of-a-kind culinary journey through the ingredients, the flavors and the seasons of Bali. Three Elements Restaurant has been awarded "World Luxury Restaurant Award 2019", and offers an à la carte selection of appetizers, entrées and desserts.</p>
    </section>

    <section class="featured mt-24" data-aos="fade-up" data-aos-delay="200">
        <div class="content-carousel">
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/9C964HPtqMGXN0s8qN8rHkk4b1yK89-metaNjI5NDZiMjdhNzMyYzUwMzg5MDYwMS5qcGc=-.jpg" class="lazy w-full h-96 object-cover" alt="Image 1">
                    <div class="p-4">
                        <h2 class="card-title">Dine at the world's best swimming pool</h2>
                        <p>Under the stars, a private water bale floats above our iconic pool, decorated with beautiful drapes, setting the scene for a memorable evening.</p>
                    </div>
                    <div class="card-footer">
                        <a href="">Explore</a>
                    </div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/S9rGBTnKHZD5rM5rPJu2ji4t8QHOf7-metaNjEzMTlkYTIwN2ZmMzY4NjQ4NDg0MC5qcGc=-.jpg" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">A once-in-a-lifetime spiritual romantic dining experience</h2>
                        <p>We invite you to eat at one of the most spiritual temples in Indonesia, the ancient holy Dalem Segara Temple, where your own private chef will serve you a gourmet meal, allowing total privacy.</p>
                    </div>
                    <div class="card-footer">
                        <a href="">Explore</a>
                    </div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/VHNCq3kTH4HfCSqVIy1zkvMH6KmGWV-metadUxydkFTQmtOTzFYdDd2V01jSEZmaHpJRzhRaFVBLW1ldGFOakV6TVRsa1ptTmtOREF3TlRRek5qa3hPVEkyTWk1cWNHYz0tLndlYnA=-.webp" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Romantic in-Villa dinner</h2>
                        <p>Let us take you back to the first date with butterflies of excitement as we indulge in culinary surprises while you celebrate a special occasion, or to simply spend some quality time together.</p>
                    </div>
                    <div class="card-footer">
                        <a href="">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="dual-perspectives">
        <div class="flex justify-center">
            <div class="dp-left" data-aos="fade-up" data-aos-delay="200">
                {{-- <div class="pb-6">
                    <h2 class="sub-title">breathtaking views</h2>
                </div> --}}
                <img class="lazy w-full h-[770px] wide:h-[770px] large:h-[600px] object-cover" src="{{asset('images/placeholder/vertical.webp')}}" data-src="https://hanginggardensofbali.com/storage/8oZyc58XhPh2kh3YKDSbQPI2j9GZjS-metaWDQxQ0plWTIwVFYzU2xWZ1ZzUXBFd3pCRDd1OFB4LW1ldGFOakk1TkRjeVkySmlOVEZqTlRBMk1UY3pNVFkzTlM1cWNHYz0tLndlYnA=-.webp" alt="Card Image">
            </div>
            <div class="dp-right" data-aos="fade-up" data-aos-delay="400">
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="https://hanginggardensofbali.com/storage/Pkaoa9sW6uo9uy8eh6NYIXKiZ0TOh7-metaNjI5NDcyZjE1ZDlkMTY5MDk3MzQwNi5qcGc=-.jpg" alt="Card Image">
                <div>
                    <h3 class="sub-title2">Floating boat sensation</h3>
                    <p class="paragraph">
                        Enjoy a unique dining experience floating in your private infinity pool as you relax in the privacy and tranquillity of your own villa.
                    </p>
                    <a href="" class="main-button ms-1">Explore</a>
                </div>
            </div>
        </div>
    </section>

    <section class="scenics-spotlight" data-aos="fade-up" data-aos-delay="500">
        <img class="ss-background lazy" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('https://hanginggardensofbali.com/storage/kHZDEspbJag18UmviiA0VjABVDtMJI-metaNjI5NDcxNjgwZTRmNjU2OTMxMTY3MC5qcGc=-.jpg')}}" alt="Placeholder Image">
        <div class="ss-section bg-black/60">
            <div class="ss-text">
                <h2 class="sub-title">Gourmet picnic <br>by the river</h2>
                <div class="paragraph">
                    <p>Enjoy a delicious gourmet picnic lunch served on our riverside Bale, at a stunning spot where the Balinese jungle meets the rushing waters of the Ayung River.</p>
                </div>
                <a href="" class="main-button border border-white hover:bg-black">Explore</a>
            </div>
        </div>
    </section>

</main>