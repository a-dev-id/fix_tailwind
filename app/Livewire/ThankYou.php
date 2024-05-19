<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Component;

class ThankYou extends Component
{
    public function render()
    {
        return view('livewire.thank-you', [
            'page' => Page::where('status', '1')->where('id', '18')->first(),
        ]);
    }
}
