<?php

namespace App\Filament\Resources\SpaResource\Pages;

use App\Filament\Resources\SpaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSpas extends ListRecords
{
    protected static string $resource = SpaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
