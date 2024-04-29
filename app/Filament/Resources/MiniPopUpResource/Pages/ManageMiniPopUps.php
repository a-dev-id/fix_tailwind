<?php

namespace App\Filament\Resources\MiniPopUpResource\Pages;

use App\Filament\Resources\MiniPopUpResource;
use Filament\Actions;
use Filament\Resources\Pages\ManageRecords;

class ManageMiniPopUps extends ManageRecords
{
    protected static string $resource = MiniPopUpResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
