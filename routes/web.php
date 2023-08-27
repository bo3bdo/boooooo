<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/', [PostController::class, 'index'])
        ->name('dashboard');

});

Route::get('/show/{post:slug}', [PostController::class, 'show'])->name('show');

// show all tags
Route::get('/tags', [PostController::class, 'tags'])->name('tags');

// show all posts with tag
Route::get('/tags/{tags:slug}', [PostController::class, 'tag'])->name('tag');
