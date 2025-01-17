<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PopUpResource\Pages;
use App\Filament\Resources\PopUpResource\RelationManagers;
use App\Models\PopUp;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PopUpResource extends Resource
{
    protected static ?string $model = PopUp::class;

    protected static ?string $navigationIcon = 'heroicon-o-square-2-stack';

    protected static ?string $navigationGroup = 'Others';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManagePopUps::route('/'),
        ];
    }
}
