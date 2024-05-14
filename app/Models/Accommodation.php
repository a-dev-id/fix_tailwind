<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Accommodation extends Model
{
    use HasFactory;

    public function Images(): HasMany
    {
        return $this->hasMany(AccommodationImage::class);
    }

    public function facilities()
    {
        return $this->belongsToMany(Facility::class, 'accommodation_facility');
    }
}
