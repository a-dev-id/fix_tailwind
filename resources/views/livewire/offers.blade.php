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

    @foreach ($offers as $data)
    <section class="{{$loop->iteration%2 == 1 ? 'bg-gray-200/50 py-20 my-20' : 'my-20'}}" wire:key="{{ $data->id }}" data-aos="fade-up" data-aos-delay="200">
        <div class="offer">
            <div class="o-left">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->hero_image)}}" alt="Sample Image" class="o-l-image lazy">
            </div>
            <div class="o-right">
                <div class="mt-1">
                    <h2 class="sub-title">{{$data->title}}</h2>
                    <div class="paragraph">
                        {{$data->excerpt}}
                    </div>
                </div>
                <div class="flex flex-col mb-1 large:flex-row wide:flex-row md:flex-col">
                    <a href="{{$data->button_value}}" class="secondary-button black me-4 md:py-3 text-center md:text-center md:mt-0">{{$data->button_label}}</a>
                    <a href="{{route('offers.show', [$data->slug])}}" class="secondary-button transparent me-4 py-2.5 md:py-3 text-center md:text-center mt-2 md:mt-5 lg:mt-5 large:mt-0 wide:mt-0">VIEW DETAIL</a>
                </div>
            </div>
        </div>
    </section>
    @endforeach
</main>