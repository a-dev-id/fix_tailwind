<?php

namespace App\Livewire;

use App\Models\Blog;
use Livewire\Component;

class StoryShow extends Component
{
    public $slug, $blog;

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->blog = Blog::where('slug', $slug)->firstOrFail();
    }

    public function render()
    {
        return view('livewire.story-show', [
            'blog' => $this->blog,
        ]);
    }
}
