<?php

namespace App\Livewire;

use App\Models\Page;
use App\Models\Spa as ModelSpa;
use Livewire\Component;

class Spa extends Component
{
    public function render()
    {
        return view('livewire.spa', [
            'page' => Page::where('status', '1')->where('id', '6')->first(),
            'spas' => ModelSpa::where('status', '1')->latest()->get(),
        ]);
    }
}
