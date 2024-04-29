<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Honeymoon extends Model
{
    use HasFactory;

    public function Images(): HasMany
    {
        return $this->hasMany(HoneymoonImage::class);
    }
}
