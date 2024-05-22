@section('meta')
<title>{{$accommodation->meta_title}}</title>
<meta name="description" content="{{$accommodation->meta_description}}" />
<meta property="og:title" content="{{$accommodation->meta_title}}" />
<meta property="og:url" content="{{ url()->full() }}" />
<meta property="og:type" content="article" />
<meta property="og:description" content="{{$accommodation->meta_description}}" />
<meta property="og:image" content="{{asset('storage/'.$accommodation->hero_image)}}" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="{{ url()->full() }}">
<meta name="twitter:creator" content="Hanging Gardens of Bali">
<meta name="twitter:title" content="{{$accommodation->meta_title}}">
<meta name="twitter:description" content="{{$accommodation->meta_description}}">
<meta name="twitter:image" content="{{asset('storage/'.$accommodation->hero_image)}}">
<link href="{{ url()->full() }}" rel="canonical">
@endsection

@push('js')
<script>
    $('.main-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.nav-slider',
        autoplay: true,
        autoplaySpeed: 3000,
    });
    
    $('.nav-slider').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '.main-slider',
        dots: false,
        centerMode: false,
        focusOnSelect: true,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 3000,
    });
</script>
@endpush

@section('header')
<header class="slick-carousel shadow-xl">
    <div>
        <div class="h-slider">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$accommodation->hero_image)}}" class="lazy w-full h-full object-cover" alt="{{$accommodation->meta_title}}">
        </div>
    </div>
</header>
@endsection

<main>
    {{-- page description section --}}
    <section class="page-description mb-24">
        <h1 class="main-title">{{$accommodation->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$accommodation->description!!}
        </div>
    </section>

    <section class="bg-gray-200/50">
        <div class="villa">
            <div class="lg:pe-5 px-5 md:px-10 order-2 md:order-2 lg:order-1 large:order-1 wide:order-1">
                <h2 class="sub-title">Features</h2>
                <div class="line ms-0"></div>
                <div class="grid grid-cols-2 gap-4 mt-5 mb-16">
                    @foreach ($accommodation->facilities as $data)
                    <div class="flex items-center" wire:key="{{ $data->id }}">
                        <img src="{{asset('storage/'.$data->image)}}" class="h-6 w-6 me-2">
                        {{$data->title}}
                    </div>
                    @endforeach
                </div>
                <a href="https://book-directonline.com/properties/hanginggardensofbalidirect" class="main-button px-10 py-5">Book Now</a>
            </div>
            <div class="md:mt-24 order-1 md:order-1 lg:order-2 large:order-2 wide:order-2 mb-24">
                <div class="main-slider">
                    @foreach ($accommodation->Images as $data)
                    <div class="slide px-2">
                        <img src="{{asset('storage/'.$data->image)}}" alt="Room 1" class="w-full h-auto">
                    </div>
                    @endforeach
                </div>
                <div class="nav-slider mt-4">
                    @foreach ($accommodation->Images as $data)
                    @if ($data->status == 1)
                    <div class="slide px-2">
                        <img src="{{asset('storage/'.$data->image)}}" alt="Room 1" class="w-full h-auto cursor-pointer">
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>
    </section>

    <section class="featured my-24">
        <h3 class="sub-title text-center mb-16">YOU MAY ALSO LIKE</h3>
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
                        <a href="{{route('accommodations.show', $data->slug)}}" class="text-[10px] md:text-base lg:text-[11px] large:text-base wide:text-base font-bold">Explore</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </section>
</main>