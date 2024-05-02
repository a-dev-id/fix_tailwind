<?php

namespace App\Livewire;

use App\Models\Accommodation;
use App\Models\Page;
use Livewire\Component;

class Accommodations extends Component
{
    public function render()
    {
        return view('livewire.accommodations', [
            'page' => Page::where('status', '1')->where('id', '3')->first(),
            'villa_satu' => Accommodation::where('status', '1')->where('id', '1')->first(),
            'villa_dua' => Accommodation::where('status', '1')->where('id', '2')->first(),
            'villa_list' => Accommodation::where('status', '1')->whereNotIn('id', [1, 2])->get(),
        ]);
    }
}
