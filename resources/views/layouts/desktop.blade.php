<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />

    @vite('resources/css/app.css', 'resources/js/app.js')
    <title>Document</title>
</head>

<body>
    <nav class="navbar bg-black/30 text-white">
        <div class="nav-border-b border-white">
            <div class="flex items-center">
                <div class="pe-6">
                    <a href="" class="text-center inline-flex items-center" target="_blank">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-[15px] h-auto mt-2">
                            <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 0 1 3-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 0 1-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 0 0 6.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 0 1 1.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 0 1-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5Z" clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>
                <div class="pe-1">
                    <a href="" class="text-center inline-flex items-center" target="_blank">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-4 h-auto mt-2">
                            <path d="M1.5 8.67v8.58a3 3 0 0 0 3 3h15a3 3 0 0 0 3-3V8.67l-8.928 5.493a3 3 0 0 1-3.144 0L1.5 8.67Z" />
                            <path d="M22.5 6.908V6.75a3 3 0 0 0-3-3h-15a3 3 0 0 0-3 3v.158l9.714 5.978a1.5 1.5 0 0 0 1.572 0L22.5 6.908Z" />
                        </svg>
                    </a>
                </div>
                <div class="pe-3">
                    <a href="" class="newsletter">newsletter</a>
                </div>
            </div>
            <div class="flex items-center justify-center">
                <a href="#">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/images/logo/Logo-02-HGOB.png" class="lazy logo brightness-0 invert-[1]" alt="">
                </a>
            </div>
            <div class="flex items-center justify-end">
                <a href="" class="book-now-nav btn-white">
                    book now
                </a>
            </div>
        </div>
        <div class="nav-items">
            <a href="" class="item">offers</a>
            <a href="" class="item">accommodation</a>
            <a href="" class="item">dining</a>
            <a href="" class="item">experiences</a>
            <a href="" class="item">spa</a>
            <a href="" class="item">honeymoon</a>
            <a href="" class="item">weddings</a>
        </div>
    </nav>

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

    <main>
        {{-- hotel description section --}}
        <section class="hotel-description" data-aos="fade-up" data-aos-delay="200">
            <h1 class="main-title">Hanging Gardens, Bali Luxury Resort</h1>
            <p class="mt-4 large:mt-3 wide:mt-4">Experience a gastronomic adventure that is without equal in Bali with legendary service that is the essence of Balinese hospitality. Dine while overlooking our spiritual core, "The World's Best Swimming Pool" so named by Conde Nast Traveler.</p>
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
            <div class="w-4/6 mx-auto overflow-hidden" data-aos="fade-up" data-aos-delay="200">
                <div class="flex">
                    <img class="lazy image-visual-insights" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/SgQRRqnqJLlFtSsk4Zc0dtIeupJ7Px-metacDRxYWs5WmVkc3R1STJMWUlKZmxZTlhTN092ekFkLW1ldGFOak00WVdZMU9XSTRNVFZrT1RReU16YzROVGc0T0M1cWNHYz0tLndlYnA=-.webp" alt="Placeholder Image">
                    <div class="visual-insights-description">
                        <h2 class="sub-title">Luxury Resort with Private Pool</h2>
                        <div class="line"></div>
                        <p>Our resort has 44 villas with private pools that represent Bali's natural and calm beauty. A wide terrace provides the ideal relaxing place and space to enjoy nature, allow the serene jungle ambiance to seep into the room.</p>
                        <a href="" class="main-button">Discover Luxurious Retreats</a>
                    </div>
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
                        <p class="mt-3 mb-10">
                            Experience a day of pure indulgence and immerse yourself in a million-dollar view with our resort's exclusive daily pass.
                        </p>
                        <a href="" class="main-button ms-1">Exclusive Adventures</a>
                    </div>
                </div>
            </div>
        </section>

        {{-- restaurant section --}}
        <section class="relative h-screen">
            <div class="absolute inset-0 bg-cover bg-center z-0 bg-[url('https://hanginggardensofbali.com/storage/eldfH1IPjHYUjpQhDYpz6pLWmtD0m8-metaNjNiMjlhZDFhNWEwNjcyODkxOTUxOC5qcGc=-.jpg')]">
            </div>
            <div class="absolute bottom-0 right-0 z-10 bg-white py-16 large:py-10 wide:py-16 wide" data-aos="fade-up" data-aos-delay="300">
                <div class="flex justify-center items-center">
                    <div class="w-96 large:w-72 wide:w-96 text-center px-16 large:px-5 wide:px-16">
                        <h2 class="text-3xl large:text-lg wide:text:3xl font-sans uppercase">THREE ELEMENTS RESTAURANT</h2>
                        <div class="border-b border-gray-600 w-28 mx-auto my-4"></div>
                        <p class="mt-3 mb-10">
                            Certainly one of the best Bali fine dining restaurants. Embark on a one-of-a-kind culinary journey through the ingredients, the flavors and the seasons of Bali.
                        </p>
                        <a href="" class="font-arial px-10 large:px-3 wide:px-10 py-3 tracking-[2px] large:tracking-widest wide:tracking-[2px] mx-auto uppercase hover:text-white hover:bg-[#a88444] hover:outline-[#a88444] outline outline-gray-600 outline-1 mt-10 font-bold">Explore Culinary Delights</a>
                    </div>
                    <img class="lazy w-[900px] large:w-[600px] wide:w-[900px] h-full object-cover" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/42B6homWwTmZCXNefSI3z5mRO9IHTl-metaNjI5NDc5MzE5N2I4ZjUxNDY2ODgyMy5qcGc=-.jpg" alt="Placeholder Image">
                </div>
            </div>
        </section>

        {{-- spa section --}}
        <section class="w-4/6 mx-auto mt-32 large:mt-24 wide:mt-32 h-[530px]">
            <div class="relative">
                <div class="absolute top-0 py-16 large:py-10 wide:py-16 ps-10 bg-gray-200/50 w-2/3 h-[450px] large:h-[430px] wide:h-[450px]" data-aos="fade-up" data-aos-delay="200">
                    <div class="w-96 large:w-64 wide:w-96 pe-8">
                        <h2 class="text-3xl large:text-lg wide:text:3xl font-sans uppercase">WELLNESS RETREAT & SPA RESORT</h2>
                        <p class="mt-3 mb-10">
                            Not only recognized as the best Ubud honeymoon resort, but also elected by "World Luxury Spa Awards" as The Best "LUXURY DESTINATION SPA" our truly luxurious Spa Collection combines natural, local ingredients and ancient techniques, to create beauty therapies and treatments that soothe the mind, rejuvenate the body and energize the soul.
                        </p>
                        <a href="" class="font-arial px-10 large:px-3 wide:px-10 py-3 tracking-[2px] large:tracking-widest wide:tracking-[2px] mx-auto uppercase hover:text-white hover:bg-[#a88444] hover:outline-[#a88444] outline outline-gray-600 outline-1 mt-10 font-bold">Exquisite Escapes Await</a>
                    </div>
                </div>
                <div class="absolute top-16 large:top-10 wide:top-16 right-0 w-2/3 h-[450px] large:h-[400px] wide:h-[450px] z-10" data-aos="fade-up" data-aos-delay="400">
                    <img class="lazy w-full h-full object-cover" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/9NJYLXXTKtwhxqrTxkkAPuwjrj0FNW-metaNjJkNGVhNDMzZWMyYTA0MDk4OTA0My5qcGc=-.jpg" alt="Placeholder Image">
                </div>
            </div>
        </section>

        {{-- wedding section --}}
        <section class="bg-gray-200/50 mt-24 large:mt-0 wide:mt-24 py-20">
            <div class="w-4/6 mx-auto overflow-hidden" data-aos="fade-up" data-aos-delay="200">
                <div class="flex">
                    <img class="lazy w-[800px] h-[500px] large:w-[550px] large:h-[420px] wide:w-[800px] wide:h-[500px] object-cover" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/storage/7mTzPJp1ujpywOer3e3CmZZrfTe9e0-metaNjI5NDdmNTE4Mjk1ZTgzNzM1MTk3Ni5qcGc=-.jpg" alt="Placeholder Image">
                    <div class="mx-8 large:mx-8 wide:mx-16 p-5 border-y border-gray-600 flex flex-col justify-center text-center">
                        <h2 class="text-3xl font-sans uppercase">The Intimate Wedding</h2>
                        <div class="border-b border-gray-600 w-28 mx-auto my-4"></div>
                        <p>Spend your special day intimately at a stunning riverside where the Balinese jungle meets the rushing waters of the holy Ayung River.</p>
                        <a href="" class="font-arial px-4 py-2 w-40 tracking-[3px] mx-auto uppercase hover:text-white hover:bg-[#a88444] hover:outline-[#a88444] outline outline-gray-600 outline-1 mt-10 font-bold">Explore</a>
                    </div>
                </div>
            </div>
        </section>

        {{-- featured experience section --}}
        <section class="relative h-screen">
            <img class="absolute inset-0 w-full h-full object-cover" src="{{asset('images/srd.png')}}" data-src="{{asset('images/srd.png')}}" alt="Placeholder Image">
            <div class="absolute inset-0 flex items-center" data-aos="fade-up" data-aos-delay="500">
                <div class="text-center text-white w-[600px] p-16">
                    <h2 class="text-3xl font-sans uppercase">A once-in-a-lifetime spiritual romantic dining experience</h2>
                    <div class="mt-5 mb-10">
                        <p>We invite you to eat at one of the most spiritual temples in Indonesia, the ancient holy Dalem Segara Temple, where your own private chef will serve you a gourmet meal, allowing total privacy.</p><br>

                        <p>Your arrival will be greeted with a Balinese welcome by a holy Mangku (the Balinese religious priest), who will impart a blessing and perform a Hindu purification ritual in order to symbolically cleanse your soul.</p>
                    </div>
                    <a href="" class="font-arial px-10 py-3 border border-white w-56 tracking-[3px] mx-auto uppercase hover:text-white hover:bg-[#a88444] hover:outline-[#a88444] outline outline-gray-600 outline-1 hover:border-white font-bold">Explore</a>
                </div>
            </div>
        </section>
    </main>

    <footer class="bg-black text-white text-sm">
        <div class="w-4/6 mx-auto ">
            <div class="grid grid-cols-5 gap-4 py-10">
                <div class="pe-10">
                    <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/images/logo/Logo-02-HGOB.png" class="lazy w-full brightness-0 invert-[1]" alt="">
                </div>
                <div class="pe-5">
                    <h3 class="uppercase font-arial tracking-[0.2rem] mb-2">Address</h3>
                    <p>Buahan, Payangan 80571, Kabupaten Gianyar - Bali Indonesia</p>
                </div>
                <div class="flex flex-col">
                    <h3 class="uppercase font-arial tracking-[0.2rem] mb-2">About</h3>
                    <a href="" class="hover:underline">Story</a>
                    <a href="" class="hover:underline">Awards</a>
                    <a href="" class="hover:underline">Press Room</a>
                    <a href="" class="hover:underline">Contact Us</a>
                </div>
                <div class="flex flex-col">
                    <h3 class="uppercase font-arial tracking-[0.2rem] mb-2">Others</h3>
                    <a href="" class="hover:underline text-green-600 font-bold">
                        <i class="fa-brands fa-pagelines"></i> Sustainability
                    </a>
                    <a href="" class="hover:underline">Policy & Legal</a>
                    <a href="" class="hover:underline">Blog</a>
                    <a href="" class="hover:underline">Careers</a>
                </div>
                <div>
                </div>
            </div>
            <div class="flex justify-between text-center border-t border-gray-600 py-5">
                <div>01</div>
                <div>02</div>
            </div>
        </div>
    </footer>

    {{-- js --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"></script>
    <script src="{{asset('js/main.js')}}"></script>

    <script>
        $(document).ready(function () {
            function lazyLoad() {
                $('.lazy').each(function () {
                    var imagePos = $(this).offset().top;
                    var windowHeight = $(window).height();
                    var topOfWindow = $(window).scrollTop();
                    if (imagePos < topOfWindow + windowHeight + 100) {
                        $(this).attr('src', $(this).attr('data-src'));
                        $(this).removeClass('lazy');
                    }
                });
            }
            lazyLoad();
            $(window).scroll(function () {
                lazyLoad();
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $(".slick-carousel").slick({
                autoplay: false,
                autoplaySpeed: 5000,
                arrows: false,
                dots: false,
                fade: true,
                pauseOnHover: false,
                adaptiveHeight: true,
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $(".content-carousel").slick({
                autoplay: false,
                arrows: true,
                prevArrow:'<button class="slick-prev absolute top-1/2 -left-3 transform -translate-y-1/2 bg-black text-white w-14 h-14 flex justify-center items-center z-10"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="3" stroke="currentColor" class="w-4 h-4"><path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" /></svg></button>',
                nextArrow:'<button class="slick-next absolute top-1/2 -right-3 transform -translate-y-1/2 bg-black text-white w-14 h-14 flex justify-center items-center z-10"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="3" stroke="currentColor" class="w-4 h-4"><path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" /></svg></button>',
                dots: false,
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: false,
                responsive: [{
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        centerMode: true,
                        centerPadding: "40px",
                    },
                },],
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            AOS.init();
        });
    </script>

</body>

</html>