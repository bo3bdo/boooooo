<?php

namespace App\Providers;

use App\Models\Abotmes;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Str;
use Spatie\Tags\Tag as TagsTag;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        view()->composer('*', function ($view) {
            $view->with('site', Abotmes::where('id', 1)->first());
            $view->with('tags', TagsTag::all());
        });

        Str::macro('readDuration', function (...$text) {
            $totalWords = str_word_count(implode(' ', $text));
            $minutesToRead = round($totalWords / 200);

            return (int)max(1, $minutesToRead);
        });
    }
}
