<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class HoneymoonImage extends Model
{
    use HasFactory;

    public function Honeymoon(): BelongsTo
    {
        return $this->belongsTo(Honeymoon::class);
    }
}
