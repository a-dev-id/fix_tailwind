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
    <section class="page-description mb-24">
        <h1 class="main-title">{{$page->title}}</h1>
        <div class="mt-4 large:mt-3 wide:mt-4">
            {!!$page->description!!}
        </div>
    </section>

    @foreach ($experiences as $data)
    <section class="visual-insights {{$loop->iteration%2 == 1 ? 'mt-3' : 'bg-white mt-3'}}" wire:key="{{ $data->id }}">
        <div class="vi-page">
            <img class="lazy vi-image-page {{$loop->iteration%2 == 1 ? 'large:order-1 lg:order-1' : 'large:order-2 lg:order-2'}}" src="{{asset('images/placeholder/horizontal.webp')}}" data-src="{{asset('storage/'.$data->image)}}" alt="Placeholder Image">
            <div class="vi-text border-none {{$loop->iteration%2 == 1 ? 'large:order-2 lg:order-2' : 'large:order-1 lg:order-1'}}">
                <h2 class="sub-title text-left">{{$data->title}}</h2>
                <div class="text-left border-t border-gray-600 pt-5 mt-5">
                    {!!$data->description!!}
                </div>
                <div class="flex mt-10 py-5 border-y border-gray-600 px-2">
                    <div class="text-left">
                        <div>Start from</div>
                        <div class="text-md wide:text-lg large:text-sm lg:text-sm md:text-sm font-bold">{{$data->price}}</div>
                        <div>{{$data->per}}</div>
                    </div>
                    <button wire:click="openModal({{$data->id}}, '{{ $data->title }}')" class="main-button my-auto me-0">Inquire now</button>
                </div>
            </div>
        </div>
    </section>

    @push('css')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    @endpush

    @push('js')
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script>
        $(document).ready(function() {
                $('#open-modal{{$data->id}}').click(function() {
                    $('#modal{{$data->id}}').removeClass('hidden');
                });
    
                $('#close-modal{{$data->id}}, #close-modal{{$data->id}}-2').click(function() {
                    $('#modal{{$data->id}}').addClass('hidden');
                });
    
                // Initialize Flatpickr
                flatpickr("#booking_date{{$data->id}}", {
                    minDate: "today",
                    dateFormat: "d-m-Y",
                    disableMobile: true,
                });
            });
    </script>
    @endpush

    <div id="modal{{$data->id}}" class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50 z-[999]" style="{{ $openModalId == $data->id ? '' : 'display: none;' }}">
        <div class="bg-white p-6 rounded-lg shadow-lg w-3/4 max-w-4xl relative" style="height: 600px; overflow-y: auto;">
            <div class="modal-header flex justify-between items-center pb-3 border-b">
                <h3 class="text-lg font-semibold">Inquiry Form</h3>
                <button wire:click="closeModal()" class="text-gray-600 hover:text-gray-900 text-2xl font-bold">&times;</button>
            </div>

            <form wire:submit.prevent="submit" class="modal-body py-4">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div class="mb-4 col-span-1 md:col-span-2">
                        <label for="experience_name{{$data->id}}" class="block text-sm font-medium text-gray-700">Experience name</label>
                        <input type="text" wire:model.defer="experience_name" id="experience_name{{$data->id}}" required class="mt-1 p-2 border border-gray-300 rounded w-full" readonly>
                        @error('experience_name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-4">
                        <label for="first_name{{$data->id}}" class="block text-sm font-medium text-gray-700">First Name</label>
                        <input type="text" wire:model="first_name" id="first_name{{$data->id}}" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                        @error('first_name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-4">
                        <label for="last_name{{$data->id}}" class="block text-sm font-medium text-gray-700">Last Name</label>
                        <input type="text" wire:model="last_name" id="last_name{{$data->id}}" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                        @error('last_name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-4">
                        <label for="booking_date{{$data->id}}" class="block text-sm font-medium text-gray-700">Booking Date</label>
                        <input type="text" wire:model="booking_date" id="booking_date{{$data->id}}" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                        @error('booking_date') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-4">
                        <label for="phone{{$data->id}}" class="block text-sm font-medium text-gray-700">Phone/WhatsApp</label>
                        <input type="text" wire:model="phone" id="phone{{$data->id}}" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                        @error('phone') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-4 col-span-1 md:col-span-2">
                        <label for="email{{$data->id}}" class="block text-sm font-medium text-gray-700">Email</label>
                        <input type="email" wire:model="email" id="email{{$data->id}}" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                        @error('email') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-4 md:col-span-2">
                        <label for="comment{{$data->id}}" class="block text-sm font-medium text-gray-700">Message</label>
                        <textarea wire:model="comment" id="comment{{$data->id}}" rows="4" class="mt-1 p-2 border border-gray-300 rounded w-full"></textarea>
                        @error('comment') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                    </div>
                </div>
                <div class="modal-footer flex justify-end pt-3">
                    <div class="modal-footer flex justify-end pt-3">
                        <button type="submit" class="relative secondary-button black me-3" wire:loading.attr="disabled">
                            <span wire:loading class="absolute inset-0 flex items-center justify-center">
                                <svg class="animate-spin h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                    <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.963 7.963 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                                </svg>
                            </span>
                            Submit
                        </button>
                        <button type="button" wire:click="closeModal()" class="secondary-button transparent px-3">
                            Close
                        </button>
                    </div>
                </div>
            </form>
            <div wire:loading class="absolute inset-0 flex items-center justify-center bg-white bg-opacity-75"></div>
        </div>
    </div>

    @endforeach

</main>