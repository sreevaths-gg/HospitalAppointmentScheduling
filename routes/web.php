<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AppointmentController;

Route::get('/', function () {
    return redirect()->route('appointments.index');
});

/*
|--------------------------------------------------------------------------
| Appointment CRUD
|--------------------------------------------------------------------------
*/

Route::resource(
    'appointments',
    AppointmentController::class
);

/*
|--------------------------------------------------------------------------
| Available Slots API
|--------------------------------------------------------------------------
*/

Route::get(
    '/doctors/{doctor}/available-slots',
    [AppointmentController::class, 'availableSlots']
)->name('doctors.available-slots');
