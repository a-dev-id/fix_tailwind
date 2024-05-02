@section('meta')
<title>{{$page->meta_title}}</title>
<meta name="description" content="{{$page->meta_description}}" />
<meta property="og:title" content="{{$page->meta_title}}" />
<meta property="og:url" content="{{ url()->full() }}" />
<meta property="og:type" content="article" />
<meta property="og:description" content="{{$page->meta_description}}" />
<meta property="og:image" content="{{asset('storage/'.$page->hero_image)}}" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="{{ url()->full() }}">
<meta name="twitter:creator" content="Hanging Gardens of Bali">
<meta name="twitter:title" content="{{$page->meta_title}}">
<meta name="twitter:description" content="{{$page->meta_description}}">
<meta name="twitter:image" content="{{asset('storage/'.$page->hero_image)}}">
<link href="{{ url()->full() }}" rel="canonical">
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
    <section class="page-description" data-aos="fade-up">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
    </section>

    <section class="bg-gray-200/50 mt-24">
        <div class="w-8/12 mx-auto py-10">
            <div class="grid grid-cols-3">
                <div class="flex flex-col" data-aos="fade-up" data-aos-delay="200">
                    <h3 class="footer-title text-xs tracking-wide font-bold">restaurant information</h3>
                    <div class="font-bold mt-5">Cuisine:</div>
                    <span>A taste of Rwanda</span>

                    <div class="font-bold mt-5">Opening times:</div>
                    <span>7:00am to 10:00pm</span>
                    <span>High tea: 3:00pm to 4:00pm</span>
                    <span>Apéritif: 6:30pm to 7:00pm</span>
                </div>
                <div class="flex flex-col" data-aos="fade-up" data-aos-delay="200">
                    <h3 class="footer-title text-xs tracking-wide font-bold">additional information</h3>
                    <div class="font-bold mt-5">Dress code:</div>
                    <span>Smart resort wear</span>

                    <div class="font-bold mt-5">Age restrictions:</div>
                    <span>Guests must be aged over 10 years</span>
                </div>
                <div class="flex flex-col" data-aos="fade-up" data-aos-delay="200">
                    <h3 class="footer-title text-xs tracking-wide font-bold">reservations</h3>
                    <div class="font-bold mt-5">Contact Us:</div>
                    <span>+250 221 011 111</span>

                    <div class="font-bold mt-5">Email Us:</div>
                    <span>reservations@oneandonlynyungwehouse.com</span>
                </div>
            </div>
        </div>
    </section>

    <section class="dual-perspectives my-32">
        <div class="flex justify-center">
            <div class="dp-left" data-aos="fade-up" data-aos-delay="200">
                <div class="pb-6">
                    <h2 class="sub-title">{{$section_one->title}}</h2>
                </div>
                <img class="lazy w-full h-[770px] wide:h-[770px] large:h-[600px] object-cover" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$section_one->hero_image)}}" alt="Card Image">
            </div>
            <div class="dp-right" data-aos="fade-up" data-aos-delay="400">
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$section_one->cover_image)}}" alt="Card Image">
                <div>
                    {{-- <h3 class="sub-title2"></h3> --}}
                    <div class="paragraph mt-12">
                        {!!$section_one->description!!}
                    </div>
                    {{-- <a href="" class="main-button ms-1">Explore</a> --}}
                </div>
            </div>
        </div>
    </section>

    <section class="visual-harmony">
        <div class="vh-background" style="background-image: url({{asset('storage/'.$section_two->hero_image)}})"></div>
        <div class="vh-section" data-aos="fade-up" data-aos-delay="300">
            <div class="vh-inner-section">
                <div class="vh-text">
                    <h2 class="sub-title">{{$section_two->title}}</h2>
                    <div class="line"></div>
                    <div class="paragraph">
                        {!!$section_two->description!!}
                    </div>
                    {{-- <a href="" class="main-button">Discover Culinary Delights</a> --}}
                </div>
                <img class="lazy vh-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$section_two->cover_image)}}" alt="Placeholder Image">
            </div>
        </div>
    </section>

</main>