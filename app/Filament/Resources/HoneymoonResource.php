<?php

namespace App\Filament\Resources;

use App\Filament\Resources\HoneymoonResource\Pages;
use App\Filament\Resources\HoneymoonResource\RelationManagers;
use App\Models\Honeymoon;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class HoneymoonResource extends Resource
{
    protected static ?string $model = Honeymoon::class;

    protected static ?string $navigationIcon = 'heroicon-o-moon';

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
            'index' => Pages\ListHoneymoons::route('/'),
            'create' => Pages\CreateHoneymoon::route('/create'),
            'edit' => Pages\EditHoneymoon::route('/{record}/edit'),
        ];
    }
}
