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

@push('css')
<style>
    ul {
        list-style-type: disc;
    }

    li {
        margin-left: 35px
    }

</style>
@endpush

@section('header')
<header class="slick-carousel shadow-xl">
    @foreach ($page->images as $data)
    <div wire:key="{{ $data->id }}">
        <div class="h-screen">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" class="lazy w-full h-full object-cover" alt="Image 2">
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

    @foreach ($spas as $data)
    <section class="visual-insights {{$loop->iteration%2 == 1 ? 'bg-white mt-3' : 'mt-3'}}" wire:key="{{ $data->id }}">
        <div class="vi-section" data-aos="fade-up" data-aos-delay="200">
            <img class="lazy vi-image {{$loop->iteration%2 == 1 ? 'large:order-1' : 'large:order-2'}}" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" alt="Placeholder Image">
            <div class="vi-text border-none {{$loop->iteration%2 == 1 ? 'large:order-2' : 'large:order-1'}}">
                <h2 class="sub-title text-left">{{$data->title}}</h2>
                <div class="text-left border-t border-gray-600 pt-5 mt-5">
                    {!!$data->description!!}
                </div>
                <div class="flex mt-10 py-5 border-y border-gray-600 px-2">
                    <div class="text-left">
                        <div>Start from</div>
                        <div class="text-lg font-bold">{{$data->price}}</div>
                        <div>{{$data->per}}</div>
                    </div>
                    <a href="" class="main-button my-auto me-0">Inquire now</a>
                </div>

            </div>
        </div>
    </section>
    @endforeach

</main>