<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BlogResource\Pages;
use App\Filament\Resources\BlogResource\RelationManagers;
use App\Models\Blog;
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

class BlogResource extends Resource
{
    protected static ?string $model = Blog::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

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
                                Forms\Components\FileUpload::make('image')->image()->directory('images/blog'),
                            ])->collapsible(),
                        Forms\Components\Section::make('Additional')
                            ->schema([
                                Forms\Components\Grid::make()
                                    ->schema([
                                        Forms\Components\Toggle::make('status')->label('Publish')->required(),
                                        Forms\Components\Toggle::make('featured'),
                                    ])->columnSpan(2),
                            ])->collapsible(),
                    ])->columnSpan(1),

                Forms\Components\Repeater::make('customFields')
                    ->relationship('customFields')
                    ->schema([
                        Forms\Components\Select::make('layout')
                            ->options([
                                'visual-insights' => 'Visual Insights',
                                'dual-perspectives' => 'Dual Perspectives',
                                'visual-harmony' => 'Visual Harmony',
                                'overlay-impression' => 'Overlay Impression',
                                'scenics-spotlight' => 'Scenics Spotlight',
                            ]),
                        Forms\Components\Grid::make()
                            ->schema([
                                Forms\Components\TextInput::make('title'),
                                Forms\Components\TextInput::make('subtitle'),
                                Forms\Components\FileUpload::make('main_image')->image()->directory('images/blog/custom_fields/main'),
                                Forms\Components\FileUpload::make('secondary_image')->image()->directory('images/blog/custom_fields/secondary'),
                            ])->columnSpan(2),
                        Forms\Components\Textarea::make('excerpt')->rows(5),
                        Forms\Components\Grid::make()
                            ->schema([
                                Forms\Components\TextInput::make('button_label'),
                                Forms\Components\TextInput::make('button_value'),
                            ])->columnSpan(2),
                    ])
                    ->reorderableWithButtons()
                    ->reorderable()
                    ->collapsible()
                    ->columnSpan(2),

            ])->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image'),
                Tables\Columns\TextColumn::make('title')->searchable()->sortable(),
                Tables\Columns\ToggleColumn::make('featured')->sortable(),
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
            'index' => Pages\ListBlogs::route('/'),
            'create' => Pages\CreateBlog::route('/create'),
            'edit' => Pages\EditBlog::route('/{record}/edit'),
        ];
    }
}
