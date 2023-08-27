<?php

namespace App\Filament\Resources\AbotmesResource\Pages;

use App\Filament\Resources\AbotmesResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditAbotmes extends EditRecord
{
    protected static string $resource = AbotmesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
