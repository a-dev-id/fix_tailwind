<footer class="footer">
    <div class="footer-section">
        <div class="footer-main">
            <div class="pe-10 flex items-center">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/images/logo/Logo-02-HGOB.png" class="lazy footer-logo" alt="">
            </div>
            <div class="pe-5">
                <h3 class="footer-title">Address</h3>
                {!!$address->description!!}
            </div>
            <div class="flex flex-col">
                <h3 class="footer-title">About</h3>
                <a href="{{route('story.index')}}" class="hover:underline">Story</a>
                <a href="{{route('awards.index')}}" class="hover:underline">Awards</a>
                <a href="{{route('press-rooms.index')}}" class="hover:underline">Press Room</a>
                <a href="{{route('contact-us.index')}}" class="hover:underline">Contact Us</a>
            </div>
            <div class="flex flex-col">
                <h3 class="footer-title">Others</h3>
                <a href="{{route('sustainability.index')}}" class="hover:underline text-green-600 font-bold">
                    <i class="fa-brands fa-pagelines"></i> Sustainability
                </a>
                <a href="{{route('policy-legal.index')}}" class="hover:underline">Policy & Legal</a>
                {{-- <a href="{{route('blog.index')}}" class="hover:underline">Blog</a> --}}
                <a href="{{route('careers.index')}}" class="hover:underline">Careers</a>
            </div>
            <div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="f-b-icon">
                {{-- instagram --}}
                <a href="{{$instagram->button_value}}" class="me-5" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-white h-6 w-6" viewBox="0 0 24 24">
                        <path d="M 8 3 C 5.239 3 3 5.239 3 8 L 3 16 C 3 18.761 5.239 21 8 21 L 16 21 C 18.761 21 21 18.761 21 16 L 21 8 C 21 5.239 18.761 3 16 3 L 8 3 z M 18 5 C 18.552 5 19 5.448 19 6 C 19 6.552 18.552 7 18 7 C 17.448 7 17 6.552 17 6 C 17 5.448 17.448 5 18 5 z M 12 7 C 14.761 7 17 9.239 17 12 C 17 14.761 14.761 17 12 17 C 9.239 17 7 14.761 7 12 C 7 9.239 9.239 7 12 7 z M 12 9 A 3 3 0 0 0 9 12 A 3 3 0 0 0 12 15 A 3 3 0 0 0 15 12 A 3 3 0 0 0 12 9 z"></path>
                    </svg>
                </a>
                {{-- facebook --}}
                <a href="{{$facebook->button_value}}" class="me-5" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-white h-6 w-6" viewBox="0 0 24 24">
                        <path d="M12,2C6.477,2,2,6.477,2,12c0,5.013,3.693,9.153,8.505,9.876V14.65H8.031v-2.629h2.474v-1.749 c0-2.896,1.411-4.167,3.818-4.167c1.153,0,1.762,0.085,2.051,0.124v2.294h-1.642c-1.022,0-1.379,0.969-1.379,2.061v1.437h2.995 l-0.406,2.629h-2.588v7.247C18.235,21.236,22,17.062,22,12C22,6.477,17.523,2,12,2z"></path>
                    </svg>
                </a>
                {{-- twitter --}}
                <a href="{{$twitter->button_value}}" class="me-5" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-white h-6 w-6" viewBox="0 0 24 24">
                        <path d="M 2.3671875 3 L 9.4628906 13.140625 L 2.7402344 21 L 5.3808594 21 L 10.644531 14.830078 L 14.960938 21 L 21.871094 21 L 14.449219 10.375 L 20.740234 3 L 18.140625 3 L 13.271484 8.6875 L 9.2988281 3 L 2.3671875 3 z M 6.2070312 5 L 8.2558594 5 L 18.033203 19 L 16.001953 19 L 6.2070312 5 z"></path>
                    </svg>
                </a>
                {{-- youtube --}}
                <a href="{{$youtube->button_value}}" class="me-5" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" class="fill-white h-6 w-6" viewBox="0 0 30 30">
                        <path d="M 15 4 C 10.814 4 5.3808594 5.0488281 5.3808594 5.0488281 L 5.3671875 5.0644531 C 3.4606632 5.3693645 2 7.0076245 2 9 L 2 15 L 2 15.001953 L 2 21 L 2 21.001953 A 4 4 0 0 0 5.3769531 24.945312 L 5.3808594 24.951172 C 5.3808594 24.951172 10.814 26.001953 15 26.001953 C 19.186 26.001953 24.619141 24.951172 24.619141 24.951172 L 24.621094 24.949219 A 4 4 0 0 0 28 21.001953 L 28 21 L 28 15.001953 L 28 15 L 28 9 A 4 4 0 0 0 24.623047 5.0546875 L 24.619141 5.0488281 C 24.619141 5.0488281 19.186 4 15 4 z M 12 10.398438 L 20 15 L 12 19.601562 L 12 10.398438 z"></path>
                    </svg>
                </a>
            </div>
            <div class="f-b-copy">Copyright &copy; {{ now()->year }} Hanging Gardens of Bali.</div>
        </div>
    </div>
</footer>