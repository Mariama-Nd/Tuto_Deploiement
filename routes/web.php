<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtapeController;
use App\Http\Controllers\CaptureController;

Route::get('/', function () {
    return view('etapes/index');
});

Route::get('/etapes', [EtapeController::class, 'index'])->name('etapes.index');
Route::get('/etapes/create', [EtapeController::class, 'create'])->name('etapes.create');
Route::post('/etapes', [EtapeController::class, 'store'])->name('etapes.store');
Route::get('/etapes/{id}', [EtapeController::class, 'show'])->name('etapes.show');
Route::delete('/captures/{id}', [CaptureController::class, 'destroy'])->name('captures.destroy');
