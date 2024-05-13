<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Component;

class Sustainability extends Component
{
    public function render()
    {
        return view('livewire.sustainability', [
            'page' => Page::where('status', '1')->where('id', '17')->first(),
        ]);
    }
}
