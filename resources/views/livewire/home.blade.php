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
        <div class="relative h-screen">
            <iframe class="header-iframe-youtube large:h-[130%]" src="https://www.youtube.com/embed/videoseries?list=PLw8fGZ6fiQLDJFgAGgnwqjoTEvBH1pd8r&autoplay=1&mute=1&controls=0&loop=1&rel=0&showinfo=0&iv_load_policy=3&playlist=9RA48trBz24" frameborder="0" allowfullscreen></iframe>
        </div>
    </div>
    {{--
    <div>
        <div class="relative h-screen">
            <video controls class="w-full h-full object-cover">
                <source src="https://hanginggardensofbali.com/videos/hgob-video-mini-compressed.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
    </div>
    <div>
        <div class="h-screen">
            <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="w-full h-full object-cover" alt="Image 2">
        </div>
    </div>
    --}}
</header>
@endsection

<main>
    {{-- page description section --}}
    <section class="page-description" data-aos="fade-up">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">{!! $page->description !!}</div>
    </section>

    {{-- story section --}}
    <section class="featured" data-aos="fade-up" data-aos-delay="200">
        <div class="content-carousel">
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="lazy w-full h-96 object-cover" alt="Image 1">
                    <div class="p-4">
                        <h2 class="card-title">Card 1</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 2</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 3</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 4</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 5</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 6</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 7</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem facere, cum iste ad tempora velit consectetur quia nihil beatae voluptate sequi possimus sit quam saepe! Id vero officiis eos consequuntur?</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
            <div class="max-w-xl mx-3">
                <div class="overflow-hidden">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://images.unsplash.com/photo-1712337646541-d0c6f85447f8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Image 1" class="lazy w-full h-96 object-cover">
                    <div class="p-4">
                        <h2 class="card-title">Card 8</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam aperiam quidem est saepe consectetur, unde commodi, nulla nesciunt atque sint cupiditate temporibus! Voluptates itaque saepe, ex quos numquam enim ratione.</p>
                    </div>
                    <div class="card-footer">Footer</div>
                </div>
            </div>
        </div>
    </section>

    {{-- accommodation section --}}
    <section class="visual-insights">
        <div class="vi-section" data-aos="fade-up" data-aos-delay="200">
            <img class="lazy vi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$accommodation->hero_image)}}" alt="Placeholder Image">
            <div class="vi-text">
                <h2 class="sub-title">{{$accommodation->title}}</h2>
                <div class="line"></div>
                {{$accommodation->excerpt}}
                <a href="{{route($accommodation->button_value)}}" class="main-button">{{$accommodation->button_label}}</a>
            </div>
        </div>
    </section>

    {{-- experiences section --}}
    <section class="dual-perspectives">
        <div class="flex justify-center">
            <div class="dp-left" data-aos="fade-up" data-aos-delay="200">
                <div class="pb-6">
                    <h2 class="sub-title">Unique Experiences</h2>
                </div>
                <img class="lazy w-full h-[770px] wide:h-[770px] large:h-[600px] object-cover" src="{{asset('images/placeholder/vertical.webp')}}" data-src="https://hanginggardensofbali.com/storage/tCzOXiSeWWwXZqpRMWchop4xYfkGUg-metaNjI5NDcyNDEzYTkxYzM4NDA4MDcwMy5qcGc=-.jpg" alt="Card Image">
            </div>
            <div class="dp-right" data-aos="fade-up" data-aos-delay="400">
                <img class="lazy dp-l-image" src="{{asset('images/placeholder/vertical.webp')}}" data-src="https://hanginggardensofbali.com/storage/aJvmNQ79c5vf4I6qwiEEInTwmGLboy-metadWx0aW1hdGUgbWlsaW9uYWlyZSBoYW5nb3V0LmpwZw==-.jpg" alt="Card Image">
                <div>
                    <h3 class="sub-title2">Ultimate Millionaire Hangout</h3>
                    <p class="paragraph">
                        Experience a day of pure indulgence and immerse yourself in a million-dollar view with our resort's exclusive daily pass.
                    </p>
                    <a href="" class="main-button ms-1">Discover Exclusive Adventures</a>
                </div>
            </div>
        </div>
    </section>

    {{-- restaurant section --}}
    <section class="visual-harmony">
        <div class="vh-background bg-[url('https://hanginggardensofbali.com/storage/eldfH1IPjHYUjpQhDYpz6pLWmtD0m8-metaNjNiMjlhZDFhNWEwNjcyODkxOTUxOC5qcGc=-.jpg')]"></div>
        <div class="vh-section" data-aos="fade-up" data-aos-delay="300">
            <div class="vh-inner-section">
                <div class="vh-text">
                    <h2 class="sub-title">THREE ELEMENTS RESTAURANT</h2>
                    <div class="line"></div>
                    <p class="paragraph">
                        Certainly one of the best Bali fine dining restaurants. Embark on a one-of-a-kind culinary journey through the ingredients, the flavors and the seasons of Bali.
                    </p>
                    <a href="" class="main-button">Discover Culinary Delights</a>
                </div>
                <img class="lazy vh-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/42B6homWwTmZCXNefSI3z5mRO9IHTl-metaNjI5NDc5MzE5N2I4ZjUxNDY2ODgyMy5qcGc=-.jpg" alt="Placeholder Image">
            </div>
        </div>
    </section>

    {{-- spa section --}}
    <section class="overlay-impression">
        <div class="oi-text" data-aos="fade-up" data-aos-delay="200">
            <div class="oi-section">
                <h2 class="sub-title">WELLNESS RETREAT & SPA RESORT</h2>
                <p class="paragraph">
                    Not only recognized as the best Ubud honeymoon resort, but also elected by "World Luxury Spa Awards" as The Best "LUXURY DESTINATION SPA" our truly luxurious Spa Collection combines natural, local ingredients and ancient techniques, to create beauty therapies and treatments that soothe the mind, rejuvenate the body and energize the soul.
                </p>
                <a href="" class="main-button">Exquisite Escapes Await</a>
            </div>
        </div>
        <div class="oi-image-section" data-aos="fade-up" data-aos-delay="400">
            <img class="lazy oi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/9NJYLXXTKtwhxqrTxkkAPuwjrj0FNW-metaNjJkNGVhNDMzZWMyYTA0MDk4OTA0My5qcGc=-.jpg" alt="Placeholder Image">
        </div>
    </section>

    {{-- wedding section --}}
    <section class="visual-insights">
        <div class="vi-section" data-aos="fade-up" data-aos-delay="200">
            <img class="lazy vi-image" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/7mTzPJp1ujpywOer3e3CmZZrfTe9e0-metaNjI5NDdmNTE4Mjk1ZTgzNzM1MTk3Ni5qcGc=-.jpg" alt="Placeholder Image">
            <div class="vi-text">
                <h2 class="sub-title">The Intimate Wedding</h2>
                <div class="line"></div>
                <p>Spend your special day intimately at a stunning riverside where the Balinese jungle meets the rushing waters of the holy Ayung River.</p>
                <a href="" class="main-button">Discover Your Dream Wedding</a>
            </div>
        </div>
    </section>

    {{-- featured experience section --}}
    <section class="scenics-spotlight">
        <img class="ss-background" src="{{asset('images/srd.png')}}" data-src="{{asset('images/srd.png')}}" alt="Placeholder Image">
        <div class="ss-section" data-aos="fade-up" data-aos-delay="500">
            <div class="ss-text">
                <h2 class="sub-title">A once-in-a-lifetime spiritual romantic dining experience</h2>
                <div class="paragraph">
                    <p>We invite you to eat at one of the most spiritual temples in Indonesia, the ancient holy Dalem Segara Temple, where your own private chef will serve you a gourmet meal, allowing total privacy.</p><br>

                    <p>Your arrival will be greeted with a Balinese welcome by a holy Mangku (the Balinese religious priest), who will impart a blessing and perform a Hindu purification ritual in order to symbolically cleanse your soul.</p>
                </div>
                <a href="" class="main-button">Explore</a>
            </div>
        </div>
    </section>
</main>