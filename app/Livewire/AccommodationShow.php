<?php

namespace App\Livewire;

use App\Models\Accommodation;
use Livewire\Component;

class AccommodationShow extends Component
{
    public $slug, $accommodation, $villa_list;

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->accommodation = Accommodation::where('slug', $slug)->firstOrFail();
        $id = $this->accommodation->id;
        $this->villa_list = Accommodation::where('status', '1')->whereNotIn('id', [$id])->get();
    }

    public function render()
    {
        return view('livewire.accommodation-show', [
            'accommodation' => $this->accommodation,
            'villa_list' => $this->villa_list,
        ]);
    }
}
