<?php

namespace App\Livewire;

use App\Models\Blog;
use App\Models\Page;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithoutUrlPagination;

class Story extends Component
{
    use WithPagination, WithoutUrlPagination;
    public function render()
    {
        return view('livewire.story', [
            'page' => Page::where('status', '1')->where('id', '15')->first(),
            'stories' => Blog::where('status', '1')->latest()->paginate(10),
        ]);
    }
}
