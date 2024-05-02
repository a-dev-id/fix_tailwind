<?php

namespace App\Livewire;

use App\Models\Dining;
use App\Models\Page;
use Livewire\Component;

class Restaurant extends Component
{
    public function render()
    {
        return view('livewire.restaurant', [
            'page' => Page::where('status', '1')->where('id', '4')->first(),
            'section_one' => Dining::where('status', '1')->where('id', '1')->first(),
            'section_two' => Dining::where('status', '1')->where('id', '2')->first(),
        ]);
    }
}
