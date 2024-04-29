<?php

namespace App\Filament\Resources\PressRoomResource\Pages;

use App\Filament\Resources\PressRoomResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPressRooms extends ListRecords
{
    protected static string $resource = PressRoomResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
