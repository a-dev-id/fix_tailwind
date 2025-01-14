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

@push('js')
<script>
    $(document).ready(function(){
        $('#open-modal').click(function(){
            $('#modal').removeClass('hidden');
        });
        $('#close-modal, #close-modal-bottom').click(function(){
            $('#modal').addClass('hidden');
        });
    });
</script>
@endpush

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
    <section class="page-description">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
    </section>

    <section class="bg-gray-200/50 mt-24">
        <div class="restaurant">
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-3 large:grid-cols-3 wide:grid-cols-3">
                <div class="flex flex-col">
                    <h3 class="footer-title text-xs tracking-wide font-bold">restaurant information</h3>
                    <div class="font-bold mt-5">Cuisine:</div>
                    <span>Western and Indonesian</span>

                    <div class="font-bold mt-5">Opening times:</div>
                    <span>Restaurant: 7:00am to 11:00pm</span>
                    <span>Pool: 7:00am to 7:00pm</span>
                </div>
                <div class="flex flex-col pr-6 md:pr-14 lg:pr-10 large:pr-20 wide:pr-40">
                    <h3 class="footer-title text-xs tracking-wide font-bold">additional information</h3>
                    <button id="open-modal" class="secondary-button black text-[10px] px-2">RESERVE NOW</button>
                    <a href="https://drive.google.com/file/d/1qSigrT4UO5Q8WTp36tUc_e2CwzJXKff4/view?usp=sharing" target="_blank" class="secondary-button transparent text-[10px] px-2 mt-2 md:mt-2 lg:mt-3 large:mt-3 wide:mt-3">VIEW MENU</a>
                </div>

                {{-- modal reservation --}}
                <div id="modal" class="fixed inset-0 bg-gray-900 bg-opacity-50 flex items-center justify-center hidden z-[999]">
                    <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-md relative">
                        <button id="close-modal" class="absolute top-2 right-2 text-gray-400 hover:text-gray-600">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </button>
                        <iframe src="https://bookv5.chope.co/booking?rid=threeelements2203bal&source=rest_threeelementsrestaurant.com" width="400px" height="750px"></iframe>
                        <button id="close-modal-bottom" class="bg-red-500 text-white px-4 py-2 rounded">Close</button>
                    </div>
                </div>

                <div class="flex flex-col">
                    <h3 class="footer-title text-xs tracking-wide font-bold mt-16 md:mt-0 lg:mt-0 large:mt-0 wide:mt-0">reservations</h3>
                    <div class="font-bold mt-5">Contact Us:</div>
                    <a href="{{$phone->button_value}}">{!!$phone->description!!}</a>

                    <div class="font-bold mt-5">Email Us:</div>
                    <a href="{{$reservations_email->button_value}}" class="md:text-[12px]">{!!$reservations_email->description!!}</a>
                </div>
            </div>
        </div>
    </section>

    <section class="dual-perspectives ">
        <div class="dp-section">
            <div class="dp-left">
                <div class="pb-6">
                    <h2 class="sub-title">{{$section_one->title}}</h2>
                </div>
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$section_one->hero_image)}}" alt="Card Image">
            </div>
            <div class="dp-right">
                <img class="lazy dp-r-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$section_one->cover_image)}}" alt="Card Image">
                <div>
                    {{-- <h3 class="sub-title2">Ultimate Millionaire Hangout</h3> --}}
                    <div class="paragraph">
                        {!!$section_one->description!!}
                    </div>
                    {{-- <a href="{{route('experiences.index')}}" class="main-button ms-1 mb-2 md:mb-0 lg:mb-0 large:mb-0 wide:mb-0">Discover Exclusive Adventures</a> --}}
                    <div class="mb-5 md:mb-0 lg:mb-0 large:mb-0 wide:mb-0"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="visual-harmony">
        <div class="vh-background" style="background-image: url({{asset('storage/'.$section_two->hero_image)}})"></div>
        <div class="vh-section">
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