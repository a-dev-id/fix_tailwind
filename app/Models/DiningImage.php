<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DiningImage extends Model
{
    use HasFactory;

    public function Dining(): BelongsTo
    {
        return $this->belongsTo(Dining::class);
    }
}
