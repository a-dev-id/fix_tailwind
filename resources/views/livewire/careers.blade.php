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

<style>
    ol {
        counter-reset: list-counter;
        list-style-type: none;
        padding-left: 0;
    }

    ol li {
        counter-increment: list-counter;
        position: relative;
        margin-left: 18px;
        padding-left: 18px;
    }

    ol li::before {
        content: counter(list-counter) ".";
        position: absolute;
        left: 0;
    }

</style>
@endpush

@section('header')
<header class="slick-carousel shadow-xl">
    <div>
        <div class="h-screen">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$page->hero_image)}}" class="lazy w-full h-full object-cover" alt="Image 2">
        </div>
    </div>
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
    <section class="page-description mb-24" data-aos="fade-up">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
    </section>

    @foreach ($careers as $data)
    <section class="mx-auto w-8/12 border-b border-gray-200 mb-10 pb-5" wire:key="{{$data->id}}" data-aos="fade-up">
        <h2 class="sub-title2 uppercase">{{$data->title}}</h2>
        <div class="text-[#a88444] pt-3 pb-4 text-lg">{{$data->subtitle}}</div>
        <div class="flex">
            @if($data->image == !null)
            <img class="lazy h-32 w-32 object-cover" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" alt="Placeholder Image">
            @endif
            <div class="ps-5">
                {{$data->excerpt}}
            </div>
        </div>
        <div class="flex items-center justify-end mt-10">
            <button id="openModalButton{{$data->id}}" class="flex items-center justify-end font-arial font-bold uppercase tracking-widest focus:border-0 focus:outline-none">
                read more
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ms-2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M17.25 8.25 21 12m0 0-3.75 3.75M21 12H3" />
                </svg>
            </button>
        </div>
    </section>

    <div id="modal{{$data->id}}" class="hidden fixed z-50 inset-0 overflow-y-auto">
        <div class="flex items-center justify-center min-h-screen">
            <div class="modal-overlay absolute w-full h-full bg-gray-900 opacity-50"></div>
            <div class="modal-container bg-white max-w-xl mx-auto rounded shadow-lg z-50 overflow-y-auto">
                <div class="modal-content py-4 text-left px-6">
                    <div id="modalContent">
                        <h2 class="sub-title2 uppercase mt-0 text-center">{{$data->title}}</h2>
                        <div class="text-[#a88444] pt-3 pb-4 text-lg text-center">{{$data->subtitle}}</div>
                        @if($data->image == !null)
                        <img class="lazy h-auto w-auto object-cover mb-3" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" alt="Placeholder Image">
                        @endif
                        {!!$data->description!!}
                    </div>
                </div>
            </div>
        </div>
    </div>

    @push('js')
    <script>
        $(document).ready(function () {
            $('#openModalButton{{$data->id}}').click(function () {
                $('#modal{{$data->id}}').removeClass('hidden');
            });

            $('.modal-close').click(function () {
                $('#modal{{$data->id}}').addClass('hidden');
            });

            $('.modal-overlay').click(function () {
                $('#modal{{$data->id}}').addClass('hidden');
            });

            $(document).keydown(function (e) {
                if (e.key === 'Escape') {
                    $('#modal{{$data->id}}').addClass('hidden');
                }
            });
        });
    </script>
    @endpush

    @endforeach

</main>