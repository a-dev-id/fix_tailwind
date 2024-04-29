<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SpaImage extends Model
{
    use HasFactory;

    public function Spa(): BelongsTo
    {
        return $this->belongsTo(Spa::class);
    }
}
