<?php

namespace App\Livewire;

use App\Models\Career;
use App\Models\Page;
use Livewire\Component;

class Careers extends Component
{
    public function render()
    {
        return view('livewire.careers', [
            'page' => Page::where('status', '1')->where('id', '16')->first(),
            'careers' => Career::where('status', '1')->latest()->get(),
        ]);
    }
}
