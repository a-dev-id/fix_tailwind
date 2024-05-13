<?php

namespace App\Livewire;

use App\Models\Award as ModelsAward;
use App\Models\Page;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithoutUrlPagination;

class Award extends Component
{
    use WithPagination, WithoutUrlPagination;
    public function render()
    {
        return view('livewire.award', [
            'page' => Page::where('status', '1')->where('id', '9')->first(),
            'awards' => ModelsAward::where('status', '1')->latest()->paginate(5),
        ]);
    }
}
