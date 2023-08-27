<?php

namespace App\Filament\Resources\AbotmesResource\Pages;

use App\Filament\Resources\AbotmesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListAbotmes extends ListRecords
{
    protected static string $resource = AbotmesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
