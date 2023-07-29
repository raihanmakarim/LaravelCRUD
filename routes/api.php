<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/store/url', [EmployeeController::class, 'storeByUrl']);
Route::get('/employees', [EmployeeController::class, 'getData']);
Route::post('/employees/create', [EmployeeController::class, 'store']);
Route::post('/employees/update/{id}', [EmployeeController::class, 'update']);
Route::delete('/employees/delete/{id}', [EmployeeController::class, 'destroy']);




Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});