<?php

namespace App\Livewire;

use App\Models\Page;
use App\Models\Wedding as ModelsWedding;
use Livewire\Component;

class Wedding extends Component
{
    public function render()
    {
        return view('livewire.wedding', [
            'page' => Page::where('status', '1')->where('id', '8')->first(),
            'weddings' => ModelsWedding::where('status', '1')->get(),
        ]);
    }
}
