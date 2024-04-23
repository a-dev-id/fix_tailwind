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
        <h1 class="main-title">UBUD LUXURY RESORTS WITH PRIVATE POOL</h1>
        <p class="mt-4 large:mt-3 wide:mt-4">The Bali resort has 44 Ubud luxury villas with private pools that represent Bali's natural and calm beauty. All of our Bali romantic villas exude a feeling of understated elegance, with trademark hand-crafted furnishings, exotic textiles, open-air dining rooms and a stunning master bathroom.</p>
    </section>

    <section class="dual-perspectives">
        <div class="flex justify-center">
            <div class="dp-left" data-aos="fade-up" data-aos-delay="200">
                <div class="pb-6">
                    <h2 class="sub-title">breathtaking views</h2>
                </div>
                <img class="lazy w-full h-[770px] wide:h-[770px] large:h-[600px] object-cover" src="{{asset('images/placeholder/vertical.webp')}}" data-src="https://hanginggardensofbali.com/storage/w75tx4rA3JhbeZXLWfhcZh0rBXsyHL-metaNjM4YWRkNjQ2NDFmYTY2Nzk4NzAzNC5qcGc=-.jpg" alt="Card Image">
            </div>
            <div class="dp-right" data-aos="fade-up" data-aos-delay="400">
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="https://hanginggardensofbali.com/storage/WlXnZ2JpWogwemEF7cTEuHoMTtw9VN-metaNjM4YWRkNjdlMTY3ZjMyODAyMTk4Mi5qcGc=-.jpg" alt="Card Image">
                <div>
                    <h3 class="sub-title2">Hanging Gardens Pool Villa</h3>
                    <p class="paragraph">
                        The Hanging Gardens Pool Villa offers breathtaking views over the rainforest, provides a sense of peace and tranquility and offers a high level of privacy and exclusivity.
                    </p>
                    <a href="" class="main-button ms-1">Explore</a>
                </div>
            </div>
        </div>
    </section>

    <section class="featured mt-10" data-aos="fade-up" data-aos-delay="200">
        <div class="content-carousel">
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/9Hobib4fcOvwwTDmSliHXh9M5r9qFn-metaYXNkc2RmLndlYnA=-.webp" class="lazy w-full h-96 object-cover" alt="Image 1">
                    <div class="p-4">
                        <h2 class="card-title">RIVERSIDE POOL VILLA</h2>
                        <p>These luxurious pool villas take full advantage of the peace and the serenity of the surrounding lush jungle, combined with the rhythmic sound of Ayung river and its cascading waterfalls below.</p>
                    </div>
                    <div class="card-footer">
                        <a href="">Explore</a>
                    </div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/c7NT2tx817tAkMtNvsrb1BncZbn6aJ-metaNjM4YWY1YTJiOGZiNjA0NTk5NjkzOC5qcGc=-.jpg" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">PANORAMIC POOL VILLA</h2>
                        <p>Set amongst the hotel's terraced gardens with the panoramic views of the valley, the let you hide away in total privacy and are designed to offer guests a sense of seclusion and tranquillity, allowing them to immerse themselves in the natural beauty of the Ayung River Valley.</p>
                    </div>
                    <div class="card-footer">
                        <a href="">Explore</a>
                    </div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/d3WgxjGewVZ7ylidg6kMiiyV5s8Xfs-metaNjM4YWQ5MWU2NDdkOTk3OTMzMDEwNC5qcGc=-.jpg" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">FAMILY POOL VILLA</h2>
                        <p>pecially designed to accommodate families, these villas feature two luxurious bedrooms and two spacious bathrooms. The upper level includes a master bedroom, an indoor/outdoor bathroom, large terrace, infinity pool and a poolside gazebo.</p>
                    </div>
                    <div class="card-footer">
                        <a href="">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="visual-harmony mt-24">
        <div class="vh-background bg-[url('https://hanginggardensofbali.com/storage/Q1knq30rq9z8xr0QCbEnab2gvxrB2p-metaSms5THRzRVRFb2hXN3hGSkFXZVNpb2lucDJLUmRQLW1ldGFOak00WkRWak5tWXhaakl4WlRJeE56QTBNemN3TUM1cWNHYz0tLndlYnA=-.webp')]"></div>
        <div class="vh-section" data-aos="fade-up" data-aos-delay="300">
            <div class="vh-inner-section">
                <div class="vh-text">
                    <h2 class="sub-title">ROYAL SPA SUITE</h2>
                    <div class="line"></div>
                    <p class="paragraph">
                        The Spa Suite has a huge spa lounge, a large bathroom with a sleek and spacious bathtub, premium linen and floor-to-ceiling glass windows.
                    </p>
                    <a href="" class="main-button">Explore</a>
                </div>
                <img class="lazy vh-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/u0091XQeTI50PRrS3jy0vgQNWmgFDw-metaNjM4ZDVjNmRlMzVlNzkyOTYzMzA4MS5qcGc=-.jpg" alt="Placeholder Image">
            </div>
        </div>
    </section>


</main>