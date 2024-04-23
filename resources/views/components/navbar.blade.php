<nav class="navbar text-white">
    <div class="nav-border-b border-white">
        <div class="nav-left">
            <div class="pe-6">
                <a href="" class="nav-icon" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-[15px] h-auto mt-2">
                        <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 0 1 3-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 0 1-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 0 0 6.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 0 1 1.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 0 1-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5Z" clip-rule="evenodd" />
                    </svg>
                </a>
            </div>
            <div class="pe-1">
                <a href="" class="nav-icon" target="_blank">
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
        <div class="nav-middle">
            <a href="{{route('index')}}" wire:navigate>
                <img src="{{asset('images/placeholder/horizontal.webp')}}" data-src="https://hanginggardensofbali.com/images/logo/Logo-02-HGOB.png" class="lazy logo brightness-0 invert-[1]" alt="">
            </a>
        </div>
        <div class="nav-right">
            <a href="" class="book-now-nav btn-white">
                book now
            </a>
        </div>
    </div>
    <div class="nav-items">
        <a href="{{route('offers.index')}}" class="item" wire:navigate>offers</a>
        <a href="{{route('accommodation.index')}}" class="item" wire:navigate>accommodation</a>
        <a href="{{route('dining.index')}}" class="item" wire:navigate>dining</a>
        <a href="{{route('experiences.index')}}" class="item" wire:navigate>experiences</a>
        <a href="" class="item" wire:navigate>spa</a>
        <a href="" class="item" wire:navigate>honeymoon</a>
        <a href="" class="item" wire:navigate>weddings</a>
    </div>
</nav>