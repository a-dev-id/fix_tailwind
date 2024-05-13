<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Component;

class PolicyLegal extends Component
{
    public function render()
    {
        return view('livewire.policy-legal', [
            'page' => Page::where('status', '1')->where('id', '14')->first(),
        ]);
    }
}
