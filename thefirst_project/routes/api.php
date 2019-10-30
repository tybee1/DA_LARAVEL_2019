<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('linh-vuc')->group(function(){
    Route::name('linh-vuc.')->group(function(){
        Route::get('/', 'API\LinhVucController@layDanhSach');
        Route::post('/them-moi','API\LinhVucController@taoLinhVuc',function(){});
    });
});

Route::get('cau-hoi','API\CauHoiController@layDanhSach');