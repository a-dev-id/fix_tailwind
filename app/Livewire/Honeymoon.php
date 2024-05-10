<?php

namespace App\Livewire;

use App\Models\Honeymoon as ModelsHoneymoon;
use App\Models\Page;
use Livewire\Component;

class Honeymoon extends Component
{
    public function render()
    {
        return view('livewire.honeymoon', [
            'page' => Page::where('status', '1')->where('id', '7')->first(),
            'honeymoons' => ModelsHoneymoon::where('status', '1')->latest()->get(),
        ]);
    }
}
