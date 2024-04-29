<?php

namespace App\Filament\Resources\HoneymoonResource\Pages;

use App\Filament\Resources\HoneymoonResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListHoneymoons extends ListRecords
{
    protected static string $resource = HoneymoonResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
