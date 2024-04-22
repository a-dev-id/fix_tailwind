@section('meta')
<title>Document</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:type" content="article" />
<meta property="og:description" content="" />
<meta property="og:image" content="test.jpg" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="">
<meta name="twitter:creator" content="">
<meta name="twitter:title" content="">
<meta name="twitter:description" content="">
<meta name="twitter:image" content="">
<link href="https://examople.com/link" rel="canonical">
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

<x-guest>
    {{-- page description section --}}
    <section class="page-description" data-aos="fade-up" data-aos-delay="200">
        <h1 class="main-title">Hanging Gardens, Bali Luxury Resort</h1>
        <p class="mt-4 large:mt-3 wide:mt-4">Experience a gastronomic adventure that is without equal in Bali with legendary service that is the essence of Balinese hospitality. Dine while overlooking our spiritual core, "The World's Best Swimming Pool" so named by Conde Nast Traveler.</p>
    </section>

    <section class="bg-gray-200/50 py-20 mt-20">
        <div class="flex w-full max-w-6xl wide:max-w-6xl large:max-w-4xl mx-auto overflow-hidden">
            <div class="w-2/3">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/SgQRRqnqJLlFtSsk4Zc0dtIeupJ7Px-metacDRxYWs5WmVkc3R1STJMWUlKZmxZTlhTN092ekFkLW1ldGFOak00WVdZMU9XSTRNVFZrT1RReU16YzROVGc0T0M1cWNHYz0tLndlYnA=-.webp" alt="Sample Image" class="object-cover w-full h-[450px] large:h-[350px] wide:h-[450px] lazy">
            </div>
            <div class="w-2/3 px-10 flex flex-col justify-between">
                <div class="mt-1">
                    <h2 class="sub-title">Title of the Card</h2>
                    <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique consectetur purus, a faucibus diam congue a. Donec eget risus diam.</p>
                </div>
                <div class="flex mb-1">
                    <button class="secondary-button black me-4">BOOK NOW</button>
                    <button class="secondary-button transparent me-4">VIEW DETAIL</button>
                </div>

            </div>
        </div>
    </section>

    <section class="py-20">
        <div class="flex w-full max-w-6xl wide:max-w-6xl large:max-w-4xl mx-auto overflow-hidden">
            <div class="w-2/3 px-10 flex flex-col justify-between">
                <div class="mt-1">
                    <h2 class="sub-title">Title of the Card</h2>
                    <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique consectetur purus, a faucibus diam congue a. Donec eget risus diam.</p>
                </div>
                <div class="flex mb-1">
                    <button class="secondary-button black me-4">BOOK NOW</button>
                    <button class="secondary-button transparent me-4">VIEW DETAIL</button>
                </div>
            </div>
            <div class="w-2/3">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/SgQRRqnqJLlFtSsk4Zc0dtIeupJ7Px-metacDRxYWs5WmVkc3R1STJMWUlKZmxZTlhTN092ekFkLW1ldGFOak00WVdZMU9XSTRNVFZrT1RReU16YzROVGc0T0M1cWNHYz0tLndlYnA=-.webp" alt="Sample Image" class="object-cover w-full h-[450px] large:h-[350px] wide:h-[450px] lazy">
            </div>
        </div>
    </section>

    <section class="bg-gray-200/50 py-20 mt-20">
        <div class="flex w-full max-w-6xl wide:max-w-6xl large:max-w-4xl mx-auto overflow-hidden">
            <div class="w-2/3">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/SgQRRqnqJLlFtSsk4Zc0dtIeupJ7Px-metacDRxYWs5WmVkc3R1STJMWUlKZmxZTlhTN092ekFkLW1ldGFOak00WVdZMU9XSTRNVFZrT1RReU16YzROVGc0T0M1cWNHYz0tLndlYnA=-.webp" alt="Sample Image" class="object-cover w-full h-[450px] large:h-[350px] wide:h-[450px] lazy">
            </div>
            <div class="w-2/3 px-10 flex flex-col justify-between">
                <div class="mt-1">
                    <h2 class="sub-title">Title of the Card</h2>
                    <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique consectetur purus, a faucibus diam congue a. Donec eget risus diam.</p>
                </div>
                <div class="flex mb-1">
                    <button class="secondary-button black me-4">BOOK NOW</button>
                    <button class="secondary-button transparent me-4">VIEW DETAIL</button>
                </div>

            </div>
        </div>
    </section>

</x-guest>