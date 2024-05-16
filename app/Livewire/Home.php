<?php

namespace App\Livewire;

use App\Models\Award;
use App\Models\Blog;
use App\Models\Experience;
use App\Models\Honeymoon;
use App\Models\Offer;
use App\Models\Page;
use App\Models\PressRoom;
use Livewire\Attributes\Layout;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        return view('livewire.home', [
            'page' => Page::where('status', '1')->where('id', '1')->first(),
            'accommodation' => Page::where('status', '1')->where('id', '3')->first(),
            'blogs' => Blog::where('status', '1')->where('featured', '1')->get(),
            'experiences' => Experience::where('status', '1')->where('featured', '1')->get(),
            'awards' => Award::where('status', '1')->where('featured', '1')->get(),
            'honeymoons' => Honeymoon::where('status', '1')->where('featured', '1')->get(),
            'offers' => Offer::where('status', '1')->where('featured', '1')->get(),
            'press_rooms' => PressRoom::where('status', '1')->where('featured', '1')->get(),
            'stories' => Blog::where('status', '1')->where('featured', '1')->get(),
        ]);
    }
}
