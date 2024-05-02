<?php

namespace App\Livewire;

use App\Models\Dining;
use App\Models\Page;
use Livewire\Component;

class Dinings extends Component
{
    public function render()
    {
        return view('livewire.dinings', [
            'page' => Page::where('status', '1')->where('id', '4')->first(),
            'dining_satu' => Dining::where('status', '1')->where('id', '1')->first(),
            'dining_dua' => Dining::where('status', '1')->where('id', '2')->first(),
            'dining_list' => Dining::where('status', '1')->whereNotIn('id', [1, 2])->get(),
        ]);
    }
}
