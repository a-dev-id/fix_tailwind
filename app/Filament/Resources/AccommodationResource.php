<?php

namespace App\Filament\Resources;

use App\Filament\Resources\AccommodationResource\Pages;
use App\Filament\Resources\AccommodationResource\RelationManagers;
use App\Models\Accommodation;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\HtmlString;
use Illuminate\Support\Str;
use Filament\Forms\Set;

class AccommodationResource extends Resource
{
    protected static ?string $model = Accommodation::class;

    protected static ?string $navigationIcon = 'heroicon-o-home-modern';

    protected static ?string $navigationGroup = 'General';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Grid::make()
                    ->schema([
                        Forms\Components\Section::make('General')
                            ->schema([
                                Forms\Components\Grid::make()
                                    ->schema([
                                        Forms\Components\TextInput::make('title')->required()->lazy()->afterStateUpdated(fn (Set $set, ?string $state) => $set('slug', Str::slug($state))),
                                        Forms\Components\TextInput::make('slug')->hint(new HtmlString('<i>Auto generated</i>')),
                                    ])
                                    ->columnSpan(1),
                                Forms\Components\TextInput::make('subtitle'),
                                Forms\Components\Textarea::make('excerpt')->rows(5),
                                Forms\Components\RichEditor::make('description'),
                            ])->collapsible(),
                        Forms\Components\Section::make('SEO')
                            ->schema([
                                Forms\Components\TextInput::make('meta_title')->maxLength(65)
                                    ->hint(fn ($state, $component) => new HtmlString('<i>Max 70 characters (left: ' . $component->getMaxLength() - strlen($state) . ' characters)</i>'))
                                    ->reactive(),
                                Forms\Components\Textarea::make('meta_description')->rows(5)->maxLength(160)
                                    ->hint(fn ($state, $component) => new HtmlString('<i>Max 155 characters (left: ' . $component->getMaxLength() - strlen($state) . ' characters</i>'))
                                    ->reactive(),
                            ])->collapsible(),
                    ])->columnSpan(2),
                Forms\Components\Grid::make()
                    ->schema([
                        Forms\Components\Section::make('Image')
                            ->schema([
                                Forms\Components\FileUpload::make('hero_image')->image()->directory('images/accommodation/hero_image')->hiddenLabel(),
                            ])->collapsible(),
                        Forms\Components\Section::make('Additional')
                            ->schema([
                                Forms\Components\TextInput::make('button_label'),
                                Forms\Components\TextInput::make('button_value'),
                                Forms\Components\Toggle::make('status')->label('Publish')->required(),
                            ])->collapsible(),
                    ])->columnSpan(1),
            ])->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('hero_image')->label('Image'),
                Tables\Columns\TextColumn::make('title')->searchable()->sortable(),
                Tables\Columns\ToggleColumn::make('status')->label('Publish')->sortable(),
                Tables\Columns\TextColumn::make('created_at')->date()->sortable(),
                Tables\Columns\TextColumn::make('updated_at')->date()->sortable(),
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
            'index' => Pages\ListAccommodations::route('/'),
            'create' => Pages\CreateAccommodation::route('/create'),
            'edit' => Pages\EditAccommodation::route('/{record}/edit'),
        ];
    }
}