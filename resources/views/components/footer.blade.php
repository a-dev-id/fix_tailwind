<footer class="footer">
    <div class="footer-section">
        <div class="footer-main">
            <div class="pe-10">
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/images/logo/Logo-02-HGOB.png" class="lazy footer-logo" alt="">
            </div>
            <div class="pe-5">
                <h3 class="footer-title">Address</h3>
                <p>Buahan, Payangan 80571, Kabupaten Gianyar - Bali Indonesia</p>
            </div>
            <div class="flex flex-col">
                <h3 class="footer-title">About</h3>
                {{-- <a href="" class="hover:underline">Story</a> --}}
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
                <a href="" class="hover:underline">Blog</a>
                <a href="" class="hover:underline">Careers</a>
            </div>
            <div>
            </div>
        </div>
        <div class="footer-bottom">
            <div>01</div>
            <div>02</div>
        </div>
    </div>
</footer>