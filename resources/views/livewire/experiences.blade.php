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
    @foreach ($page->images as $data)
    <div>
        <div class="h-screen">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" class="lazy w-full h-full object-cover" alt="Image 2">
        </div>
    </div>
    @endforeach
</header>
@endsection

<main>
    {{-- page description section --}}
    <section class="page-description" data-aos="fade-up" data-aos-delay="200">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
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