<?php

namespace App\Livewire;

use App\Models\Accommodation;
use App\Models\Page;
use Livewire\Component;

class Accommodations extends Component
{
    public function render()
    {
        return view('livewire.accommodation', [
            'page' => Page::where('status', '1')->where('id', '3')->first(),
            'data' => Accommodation::where('status', '1')->get(),
        ]);
    }
}
