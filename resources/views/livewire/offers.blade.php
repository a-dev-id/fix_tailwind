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
    <section class="page-description" data-aos="fade-up" data-aos-delay="200">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
    </section>

    @foreach ($offers as $data)
    <section class="{{$loop->iteration%2 == 1 ? 'bg-gray-200/50 py-20 mt-20' : 'mt-20'}}" wire:key="{{ $data->id }}" data-aos="fade-up" data-aos-delay="200">
        <div class="flex w-full max-w-6xl wide:max-w-6xl large:max-w-4xl mx-auto overflow-hidden">
            <div class="w-2/3">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->hero_image)}}" alt="Sample Image" class="object-cover w-full h-[450px] large:h-[350px] wide:h-[450px] lazy">
            </div>
            <div class="w-2/3 px-10 flex flex-col justify-between">
                <div class="mt-1">
                    <h2 class="sub-title">{{$data->title}}</h2>
                    <div class="paragraph">
                        {{$data->excerpt}}
                    </div>
                </div>
                <div class="flex mb-1">
                    <button class="secondary-button black me-4">BOOK NOW</button>
                    <button class="secondary-button transparent me-4">VIEW DETAIL</button>
                </div>

            </div>
        </div>
    </section>
    @endforeach



</main>