<?php

namespace App\Filament\Resources\HoneymoonResource\Pages;

use App\Filament\Resources\HoneymoonResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditHoneymoon extends EditRecord
{
    protected static string $resource = HoneymoonResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
