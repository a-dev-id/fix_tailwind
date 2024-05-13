<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Attributes\Layout;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        return view('livewire.home', [
            'page' => Page::where('status', '1')->where('id', '1')->first(),
        ]);
    }
}
