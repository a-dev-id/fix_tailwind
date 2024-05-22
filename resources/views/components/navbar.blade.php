<nav class="navbar text-white">
    <div class="nav-border-b border-white">
        <div class="nav-left">
            <div class="pe-4 md:pe-6 lg:pe-6 large:pe-6 wide:pe-6 lg:hidden large:hidden wide:hidden">
                <button id="open-offcanvas">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                    </svg>
                </button>
            </div>
            <div class="pe-4 md:pe-6 lg:pe-6 large:pe-6 wide:pe-6">
                <a href="{{$phone->button_value}}" class="nav-icon" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-[15px] h-auto mt-2">
                        <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 0 1 3-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 0 1-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 0 0 6.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 0 1 1.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 0 1-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5Z" clip-rule="evenodd" />
                    </svg>
                </a>
            </div>
            <div class="pe-1">
                <a href="{{$reservations_email->button_value}}" class="nav-icon" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-4 h-auto mt-2">
                        <path d="M1.5 8.67v8.58a3 3 0 0 0 3 3h15a3 3 0 0 0 3-3V8.67l-8.928 5.493a3 3 0 0 1-3.144 0L1.5 8.67Z" />
                        <path d="M22.5 6.908V6.75a3 3 0 0 0-3-3h-15a3 3 0 0 0-3 3v.158l9.714 5.978a1.5 1.5 0 0 0 1.572 0L22.5 6.908Z" />
                    </svg>
                </a>
            </div>
            <div class="pe-3 hidden md:hidden lg:block large:block wide:block">
                <a href="" class="newsletter">newsletter</a>
            </div>
        </div>
        <div class="nav-middle">
            <a href="{{route('index')}}">
                <img src="{{asset('images/logo.png')}}" data-src="" class="logo brightness-0 invert-[1]" alt="">
            </a>
        </div>
        <div class="nav-right">
            <a href="https://book-directonline.com/properties/hanginggardensofbalidirect" class="book-now-nav btn-white" target="_blank">
                book now
            </a>
        </div>
    </div>
    <div class="nav-items hidden md:hidden lg:block large:block wide:block">
        <a href="{{route('offers.index')}}" class="item">offers</a>
        <a href="{{route('accommodations.index')}}" class="item">accommodations</a>
        <a href="{{route('restaurant.index')}}" class="item">restaurant</a>
        <a href="{{route('experiences.index')}}" class="item">experiences</a>
        <a href="{{route('spa.index')}}" class="item">spa</a>
        <a href="{{route('honeymoon.index')}}" class="item">honeymoon</a>
        <a href="{{route('weddings.index')}}" class="item">weddings</a>
    </div>
</nav>

<div id="offcanvas" class="offcanvas hidden md:block shadow-lg">
    <div id="offcanvas-overlay" class="offcanvas-overlay"></div>
    <div class="relative p-6 h-full overflow-auto">
        <button id="close-offcanvas" class="absolute top-2 right-2 text-gray-400 hover:text-gray-600">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
        </button>
        <h3 class="main-title font-bold">Stay Connected</h3>
        <p class="sub-title2 mt-0 mb-5">Sign up to our Newsletter</p>
        <a href="" class="secondary-button black text-[14px] py-3">Sign up</a>
        <div class="line ms-0 w-72 mt-10"></div>
        <div class="my-16 flex flex-col">
            <a href="{{route('index')}}" class="item text-gray-600 my-3">home</a>
            <a href="{{route('offers.index')}}" class="item text-gray-600 my-3">offers</a>
            <a href="{{route('accommodations.index')}}" class="item text-gray-600 my-3">accommodations</a>
            <a href="{{route('restaurant.index')}}" class="item text-gray-600 my-3">restaurant</a>
            <a href="{{route('experiences.index')}}" class="item text-gray-600 my-3">experiences</a>
            <a href="{{route('spa.index')}}" class="item text-gray-600 my-3">spa</a>
            <a href="{{route('honeymoon.index')}}" class="item text-gray-600 my-3">honeymoon</a>
            <a href="{{route('weddings.index')}}" class="item text-gray-600 my-3">weddings</a>
        </div>
        <div class="line ms-0 w-72"></div>
        <div class="flex">
            {{-- instagram --}}
            <a href="{{$instagram->button_value}}" class="me-3" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-black h-6 w-6" viewBox="0 0 24 24">
                    <path d="M 8 3 C 5.239 3 3 5.239 3 8 L 3 16 C 3 18.761 5.239 21 8 21 L 16 21 C 18.761 21 21 18.761 21 16 L 21 8 C 21 5.239 18.761 3 16 3 L 8 3 z M 18 5 C 18.552 5 19 5.448 19 6 C 19 6.552 18.552 7 18 7 C 17.448 7 17 6.552 17 6 C 17 5.448 17.448 5 18 5 z M 12 7 C 14.761 7 17 9.239 17 12 C 17 14.761 14.761 17 12 17 C 9.239 17 7 14.761 7 12 C 7 9.239 9.239 7 12 7 z M 12 9 A 3 3 0 0 0 9 12 A 3 3 0 0 0 12 15 A 3 3 0 0 0 15 12 A 3 3 0 0 0 12 9 z"></path>
                </svg>
            </a>
            {{-- facebook --}}
            <a href="{{$facebook->button_value}}" class="me-3" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-black h-6 w-6" viewBox="0 0 24 24">
                    <path d="M12,2C6.477,2,2,6.477,2,12c0,5.013,3.693,9.153,8.505,9.876V14.65H8.031v-2.629h2.474v-1.749 c0-2.896,1.411-4.167,3.818-4.167c1.153,0,1.762,0.085,2.051,0.124v2.294h-1.642c-1.022,0-1.379,0.969-1.379,2.061v1.437h2.995 l-0.406,2.629h-2.588v7.247C18.235,21.236,22,17.062,22,12C22,6.477,17.523,2,12,2z"></path>
                </svg>
            </a>
            {{-- twitter --}}
            <a href="{{$twitter->button_value}}" class="me-3" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-black h-6 w-6" viewBox="0 0 24 24">
                    <path d="M 2.3671875 3 L 9.4628906 13.140625 L 2.7402344 21 L 5.3808594 21 L 10.644531 14.830078 L 14.960938 21 L 21.871094 21 L 14.449219 10.375 L 20.740234 3 L 18.140625 3 L 13.271484 8.6875 L 9.2988281 3 L 2.3671875 3 z M 6.2070312 5 L 8.2558594 5 L 18.033203 19 L 16.001953 19 L 6.2070312 5 z"></path>
                </svg>
            </a>
            {{-- youtube --}}
            <a href="{{$youtube->button_value}}" class="me-3" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-black h-6 w-6" viewBox="0 0 30 30">
                    <path d="M 15 4 C 10.814 4 5.3808594 5.0488281 5.3808594 5.0488281 L 5.3671875 5.0644531 C 3.4606632 5.3693645 2 7.0076245 2 9 L 2 15 L 2 15.001953 L 2 21 L 2 21.001953 A 4 4 0 0 0 5.3769531 24.945312 L 5.3808594 24.951172 C 5.3808594 24.951172 10.814 26.001953 15 26.001953 C 19.186 26.001953 24.619141 24.951172 24.619141 24.951172 L 24.621094 24.949219 A 4 4 0 0 0 28 21.001953 L 28 21 L 28 15.001953 L 28 15 L 28 9 A 4 4 0 0 0 24.623047 5.0546875 L 24.619141 5.0488281 C 24.619141 5.0488281 19.186 4 15 4 z M 12 10.398438 L 20 15 L 12 19.601562 L 12 10.398438 z"></path>
                </svg>
            </a>
            {{-- tripadvisor --}}
            <a href="{{$tripadvisor->button_value}}" class="me-3" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-black h-6 w-6" viewBox="0 0 50 50">
                    <path d="M 25 11 C 19.167969 11 13.84375 12.511719 9.789063 15 L 2 15 C 2 15 3.753906 17.152344 4.578125 19.578125 C 2.96875 21.621094 2 24.195313 2 27 C 2 33.628906 7.371094 39 14 39 C 17.496094 39 20.636719 37.492188 22.828125 35.105469 L 25 38 L 27.171875 35.105469 C 29.363281 37.492188 32.503906 39 36 39 C 42.628906 39 48 33.628906 48 27 C 48 24.195313 47.03125 21.621094 45.421875 19.578125 C 46.246094 17.152344 48 15 48 15 L 40.203125 15 C 36.148438 12.511719 30.828125 11 25 11 Z M 14 18 C 18.972656 18 23 22.027344 23 27 C 23 31.972656 18.972656 36 14 36 C 9.027344 36 5 31.972656 5 27 C 5 22.027344 9.027344 18 14 18 Z M 36 18 C 40.972656 18 45 22.027344 45 27 C 45 31.972656 40.972656 36 36 36 C 31.027344 36 27 31.972656 27 27 C 27 22.027344 31.027344 18 36 18 Z M 14 21 C 10.6875 21 8 23.6875 8 27 C 8 30.3125 10.6875 33 14 33 C 17.3125 33 20 30.3125 20 27 C 20 23.6875 17.3125 21 14 21 Z M 36 21 C 32.6875 21 30 23.6875 30 27 C 30 30.3125 32.6875 33 36 33 C 39.3125 33 42 30.3125 42 27 C 42 23.6875 39.3125 21 36 21 Z M 14 23 C 16.210938 23 18 24.789063 18 27 C 18 29.210938 16.210938 31 14 31 C 11.789063 31 10 29.210938 10 27 C 10 24.789063 11.789063 23 14 23 Z M 36 23 C 38.210938 23 40 24.789063 40 27 C 40 29.210938 38.210938 31 36 31 C 33.789063 31 32 29.210938 32 27 C 32 24.789063 33.789063 23 36 23 Z M 14 25 C 12.894531 25 12 25.894531 12 27 C 12 28.105469 12.894531 29 14 29 C 15.105469 29 16 28.105469 16 27 C 16 25.894531 15.105469 25 14 25 Z M 36 25 C 34.894531 25 34 25.894531 34 27 C 34 28.105469 34.894531 29 36 29 C 37.105469 29 38 28.105469 38 27 C 38 25.894531 37.105469 25 36 25 Z"></path>
                </svg>
            </a>
        </div>
    </div>
</div>