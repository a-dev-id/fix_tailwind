<?php

namespace App\Livewire;

use App\Models\Page;
use App\Models\PressRoom as ModelsPressRoom;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithoutUrlPagination;

class PressRoom extends Component
{
    use WithPagination, WithoutUrlPagination;
    public function render()
    {
        return view('livewire.press-room', [
            'page' => Page::where('status', '1')->where('id', '11')->first(),
            'press_rooms' => ModelsPressRoom::where('status', '1')->latest()->paginate(5),
        ]);
    }
}
