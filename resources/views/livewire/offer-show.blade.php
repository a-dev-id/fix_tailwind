@section('meta')
<title>{{$offer->meta_title}}</title>
<meta name="description" content="{{$offer->meta_description}}" />
<meta property="og:title" content="{{$offer->meta_title}}" />
<meta property="og:url" content="{{ url()->full() }}" />
<meta property="og:type" content="article" />
<meta property="og:description" content="{{$offer->meta_description}}" />
<meta property="og:image" content="{{asset('storage/'.$offer->hero_image)}}" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="{{ url()->full() }}">
<meta name="twitter:creator" content="Hanging Gardens of Bali">
<meta name="twitter:title" content="{{$offer->meta_title}}">
<meta name="twitter:description" content="{{$offer->meta_description}}">
<meta name="twitter:image" content="{{asset('storage/'.$offer->hero_image)}}">
<link href="{{ url()->full() }}" rel="canonical">
@endsection

@section('header')
<header class="slick-carousel shadow-xl">
    <div>
        <div class="h-slider">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$offer->hero_image)}}" class="lazy w-full h-full object-cover" alt="{{$offer->title}}">
        </div>
    </div>
</header>
@endsection

<main>
    {{-- page description section --}}
    <section class="page-description mb-24">
        <h1 class="main-title">{{$offer->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4 mb-14">
            {!!$offer->description!!}
        </div>
        @if ($offer->button_value == null)
        <a href="{{$booking_engine->button_value}}&promocode={{$offer->promo_code}}&checkInDate={{date('Y-m-d')}}&checkOutDate={{date('Y-m-d',strtotime('+'.$offer->min_night.' days'))}}&currency=USD" class="secondary-button black" target="_blank">{{$offer->button_label}}</a>
        @elseif ($offer->button_value == 'Featured')
        @else
        <a href="{{$offer->button_value}}" class="secondary-button black" target="_blank">{{$offer->button_label}}</a>
        @endif
    </section>

    @foreach ($offer->offerfields as $data)
    @if ($data->layout == 'featured')
    <section class="featured">
        <div class="content-carousel">
            <div class="max-w-xl mx-3 mb-16 text-center">
                <div class="overflow-hidden">
                    <div class="p-4">
                        <h2 class="card-title">{{$data->title}}</h2>
                        {!!$data->excerpt!!}
                    </div>
                    <div class="card-footer mb-10 mx-auto flex justify-center">
                        <a href="{{$booking_engine->button_value}}&promocode={{$data->button_value}}&checkInDate={{date('Y-m-d')}}&checkOutDate={{date('Y-m-d',strtotime('+'.$data->button_label.' days'))}}&currency=USD" class="secondary-button black" class="mx-auto text-[10px] md:text-base lg:text-base large:text-base wide:text-base font-bold" target="_blank">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @elseif ($data->layout == 'visual-insights')
    <section class="visual-insights">
        <div class="vi-section">
            <img class="lazy vi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->main_image)}}" alt="Placeholder Image">
            <div class="vi-text">
                <h2 class="sub-title">{{$data->title}}</h2>
                <div class="line"></div>
                {{$data->excerpt}}
                @if ($data->button_label == !null)
                <a href="{{$data->buttbon_value}}" class="main-button">{{$data->buttbon_label}}</a>
                @endif
            </div>
        </div>
    </section>
    @elseif ($data->layout == 'dual-perspectives')
    <section class="dual-perspectives">
        <div class="dp-section">
            <div class="dp-left">
                <div class="pb-6">
                    <h2 class="sub-title">{{$data->title}}</h2>
                </div>
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$data->main_image)}}" alt="Card Image">
            </div>
            <div class="dp-right">
                <img class="lazy dp-r-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="{{asset('storage/'.$data->secondary_image)}}" alt="Card Image">
                <div>
                    <h3 class="sub-title2">{{$data->subtitle}}</h3>
                    <div class="paragraph">
                        {{$data->excerpt}}
                    </div>
                    @if ($data->button_label == !null)
                    <a href="{{$data->buttbon_value}}" class="main-button ms-1">{{$data->buttbon_label}}</a>
                    @endif
                    <div class="mb-5 md:mb-0 lg:mb-0 large:mb-0 wide:mb-0"></div>
                </div>
            </div>
        </div>
    </section>
    @elseif ($data->layout == 'visual-harmony')
    <section class="visual-harmony">
        <div class="vh-background bg-[url({{asset('storage/'.$data->secondary_image)}})]"></div>
        <div class="vh-section">
            <div class="vh-inner-section">
                <div class="vh-text">
                    <h2 class="sub-title">{{$data->title}}</h2>
                    <div class="line"></div>
                    <div class="paragraph">
                        {{$data->excerpt}}
                    </div>
                    @if ($data->button_label == !null)
                    <a href="{{$data->buttbon_value}}" class="main-button">{{$data->buttbon_label}}</a>
                    @endif
                </div>
                <img class="lazy vh-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->main_image)}}" alt="Placeholder Image">
            </div>
        </div>
    </section>
    @elseif ($data->layout == 'overlay-impression')
    <section class="overlay-impression-o">
        <div class="oi-text">
            <div class="oi-section">
                <h2 class="sub-title">{{$data->title}}</h2>
                <div class="paragraph">
                    {{$data->excerpt}}
                </div>
                @if ($data->button_label == !null)
                <a href="{{$data->buttbon_value}}" class="main-button">{{$data->buttbon_label}}</a>
                @endif
            </div>
        </div>
        <div class="oi-image-section">
            <img class="lazy oi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->main_image)}}" alt="Placeholder Image">
        </div>
    </section>
    @elseif ($data->layout == 'scenics-spotlight')
    <section class="scenics-spotlight">
        <img class="ss-background" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->main_image)}}" alt="Placeholder Image">
        <div class="ss-section">
            <div class="ss-text">
                <h2 class="sub-title">{{$data->title}}</h2>
                <div class="paragraph">
                    {{$data->excerpt}}
                </div>
                @if ($data->button_label == !null)
                <a href="{{$data->buttbon_value}}" class="main-button">{{$data->buttbon_label}}</a>
                @endif
            </div>
        </div>
    </section>
    @endif
    @endforeach

</main>