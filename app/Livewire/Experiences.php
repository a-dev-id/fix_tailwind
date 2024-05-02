<?php

namespace App\Livewire;

use App\Models\Experience;
use App\Models\Page;
use Livewire\Component;

class Experiences extends Component
{
    public function render()
    {
        return view('livewire.experiences', [
            'page' => Page::where('status', '1')->where('id', '5')->first(),
            'experiences' => Experience::where('status', '1')->get(),
        ]);
    }
}
