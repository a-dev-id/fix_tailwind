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
    <section class="page-description mb-24" data-aos="fade-up">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-6 text-left">
            {!!$page->description!!}
        </div>
    </section>

</main>