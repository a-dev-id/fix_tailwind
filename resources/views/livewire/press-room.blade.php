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
    <div>
        <div class="h-slider">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$page->hero_image)}}" class="lazy w-full h-full object-cover" alt="{{$page->meta_title}}">
        </div>
    </div>
</header>
@endsection

<main>
    {{-- page description section --}}
    <section class="page-description mb-24">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
    </section>

    @foreach ($press_rooms as $data)
    <section class="fusion-card" wire:key="{{$data->id}}">
        <h2 class="sub-title2 uppercase mb-5">{{$data->title}}</h2>
        <div class="flex flex-col md:flex-row lg:flex-row large:flex-row wide:flex-row">
            <img class="lazy f-c-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" alt="Placeholder Image">
            <div class="ps-0 md:ps-5 lg:ps-5 large:ps-5 wide:ps-5">
                {{$data->excerpt}}
            </div>
        </div>
        <div class="flex items-center justify-end">
            <a href="{{$data->subtitle}}" class="flex items-center justify-end font-arial font-bold uppercase tracking-widest focus:border-0 focus:outline-none px-3 py-3">
                view article
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ms-2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M17.25 8.25 21 12m0 0-3.75 3.75M21 12H3" />
                </svg>
            </a>
        </div>
    </section>
    @endforeach

    <section class="mx-auto w-8/12 flex justify-end mb-10">
        <div class="w-32">
            {{$press_rooms->links('livewire.pagination')}}
        </div>
    </section>

    <section class="featured mb-24">
        <div class="content-carousel">
            @foreach ($page->images as $data)
            <div class="max-w-xl mx-3" wire:key="{{$data->id}}">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" class="lazy w-full h-96 object-cover" alt="{{$data->title}}">
                </div>
            </div>
            @endforeach
        </div>
    </section>

</main>