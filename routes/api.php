<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserApiController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::controller(UserApiController::class)->group(function (){
    Route::get('/users/{id?}', 'showUser');
    Route::post('/add-user', 'addUser');
    Route::post('/add-multiple-user', 'addMultipleUser');

    Route::put('/update-user/{id}', 'updateUser');
    Route::patch('/update-single-user/{id}', 'updateSingleUser');

    Route::delete('/delete-single-user/{id}', 'deleteSingleUser');
    Route::delete('/delete-multiple-user/{ids}', 'deleteMultipleUser');

    Route::delete('/delete-single-user-with-json', 'deleteSingleUserWithJson');
    Route::delete('/delete-multiple-user-with-json', 'deleteMultipleUserWithJson');

    Route::post('register-user-using-passport','registerUserUsingPassport');

    Route::post('login-user-using-passport','loginUserUsingPassport');
});
