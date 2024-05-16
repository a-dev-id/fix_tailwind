<?php

namespace App\Livewire;

use App\Models\Offer;
use App\Models\Page;
use Livewire\Component;

class Offers extends Component
{
    public function render()
    {
        return view('livewire.offers', [
            'page' => Page::where('status', '1')->where('id', '2')->first(),
            'offers' => Offer::where('status', '1')->latest()->get(),
        ]);
    }
}
