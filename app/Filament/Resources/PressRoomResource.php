<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PressRoomResource\Pages;
use App\Filament\Resources\PressRoomResource\RelationManagers;
use App\Models\PressRoom;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PressRoomResource extends Resource
{
    protected static ?string $model = PressRoom::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationGroup = 'General';

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
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPressRooms::route('/'),
            'create' => Pages\CreatePressRoom::route('/create'),
            'edit' => Pages\EditPressRoom::route('/{record}/edit'),
        ];
    }
}
