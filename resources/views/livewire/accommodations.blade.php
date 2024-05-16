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
        <div class="h-slider">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$page->hero_image)}}" class="lazy w-full h-full object-cover" alt="{{$page->meta_title}}">
        </div>
    </div>
    @foreach ($page->images as $data)
    <div wire:key="{{ $data->id }}">
        <div class="h-slider">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" class="lazy w-full h-full object-cover" alt="{{$data->title}}">
        </div>
    </div>
    @endforeach
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

    <section class="dual-perspectives">
        <div class="dp-section">
            <div class="dp-left" data-aos="fade-up" data-aos-delay="200">
                <div class="pb-6">
                    <h2 class="sub-title">{{$villa_satu->subtitle}}</h2>
                </div>
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$villa_satu->cover_image)}}" alt="{{$villa_satu->subtitle}}">
            </div>
            <div class="dp-right" data-aos="fade-up" data-aos-delay="400">
                <img class="lazy dp-r-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$villa_satu->hero_image)}}" alt="{{$villa_satu->title}}">
                <div>
                    <h3 class="sub-title2">{{$villa_satu->title}}</h3>
                    <div class="paragraph">
                        {{$villa_satu->excerpt}}
                    </div>
                    <a href="{{route('accommodations.show', $villa_satu->slug)}}" class="main-button ms-1">Explore</a>
                    <div class="mb-5 md:mb-0 lg:mb-0 large:mb-0 wide:mb-0"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="featured mt-10" data-aos="fade-up" data-aos-delay="200">
        <div class="content-carousel">

            @foreach ($villa_list as $data)
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->hero_image)}}" class="lazy w-full h-96 object-cover" alt="Image 1">
                    <div class="p-4">
                        <h2 class="card-title">{{$data->title}}</h2>
                        <div>
                            {{$data->excerpt}}
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="{{route('accommodations.show', $data->slug)}}">Explore</a>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </section>

    <section class="visual-harmony mt-0 md:mt-24 lg:mt-24 large:mt-24 wide:mt-24">
        <div class="vh-background" style="background-image: url('{{asset('storage/'.$villa_dua->cover_image)}}')"></div>
        <div class="vh-section" data-aos="fade-up">
            <div class="vh-inner-section">
                <div class="vh-text">
                    <h2 class="sub-title">{{$villa_dua->title}}</h2>
                    <div class="line"></div>
                    <div class="paragraph">
                        {{$villa_dua->excerpt}}
                    </div>
                    <a href="{{route('accommodations.show', $villa_dua->slug)}}" class="main-button">Explore</a>
                </div>
                <img class="lazy vh-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$villa_dua->hero_image)}}" alt="{{$villa_dua->title}}">
            </div>
        </div>
    </section>


</main>