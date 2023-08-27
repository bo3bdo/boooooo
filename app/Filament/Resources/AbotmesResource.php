<?php

namespace App\Filament\Resources;

use App\Filament\Resources\AbotmesResource\Pages;
use App\Models\Abotmes;
use Filament\Forms;
use Filament\Forms\Components\Grid;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Model;

class AbotmesResource extends Resource
{
    protected static ?string $model = Abotmes::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $modelLabel = 'settings';

    protected static ?string $navigationLabel = 'Settings';

    protected static ?string $title = 'Settings';

    public static function canCreate(): bool
    {
        return false;
    }

    public static function canDelete(Model $record): bool
    {
        return false;
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Grid::make([
                    'default' => 1,
                ])->schema([
                    Forms\Components\TextInput::make('h1_title')
                        ->label('Post title')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('h2_title')
                        ->label('Post title')
                        ->maxLength(255),
                    Forms\Components\TextInput::make('h3_title')
                        ->maxLength(255),
                    Forms\Components\Toggle::make('is_active')
                        ->required(),
                    Forms\Components\FileUpload::make('image')
                        ->image()
                        ->required(),
                    Forms\Components\TextInput::make('image_text')
                        ->required(),
                    Forms\Components\TextInput::make('github_link')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('twitter_link')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('latest_posts_h1')
                        ->maxLength(255),
                    Forms\Components\TextInput::make('latest_posts_h2')
                        ->maxLength(255),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('h1_title')
                    ->limit(10)
                    ->searchable(),
                Tables\Columns\TextColumn::make('h2_title')
                    ->limit(10)
                    ->searchable(),
                Tables\Columns\TextColumn::make('h3_title')
                    ->limit(10)
                    ->searchable(),
                ToggleColumn::make('is_active'),
                Tables\Columns\ImageColumn::make('image'),
                Tables\Columns\ImageColumn::make('image_text')
                    ->limit(10),
                Tables\Columns\TextColumn::make('github_link')
                    ->limit(10)
                    ->searchable(),
                Tables\Columns\TextColumn::make('twitter_link')
                    ->limit(10)
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('latest_posts_h1')
                    ->limit(10)
                    ->searchable(),
                Tables\Columns\TextColumn::make('latest_posts_h2')
                    ->limit(10)
                    ->searchable(),
            ])->paginated(false)
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
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
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
            'index' => Pages\ListAbotmes::route('/'),
            //            'create' => Pages\CreateAbotmes::route('/create'),
            //            'edit' => Pages\EditAbotmes::route('/{record}/edit'),
        ];
    }
}
