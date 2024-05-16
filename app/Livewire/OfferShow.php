<?php

namespace App\Livewire;

use App\Models\Offer;
use Livewire\Component;

class OfferShow extends Component
{
    public $slug, $offer;

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->offer = Offer::where('slug', $slug)->firstOrFail();
    }

    public function render()
    {
        return view('livewire.offer-show', [
            'offer' => $this->offer,
        ]);
    }
}
