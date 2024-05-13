<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Component;

class ContactUs extends Component
{
    public function render()
    {
        return view('livewire.contact-us', [
            'page' => Page::where('status', '1')->where('id', '12')->first(),
        ]);
    }
}
