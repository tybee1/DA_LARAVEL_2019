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


//API route lĩnh vực
Route::prefix('linh-vuc')->group(function(){
    Route::name('linh-vuc.')->group(function(){
        Route::get('/', 'API\LinhVucController@layDanhSach');
    });
});

//API route câu hỏi
Route::prefix('cau-hoi')->group(function(){
    Route::name('cau-hoi.')->group(function(){
        Route::post('/','API\CauHoiController@layDanhSach');
        Route::get('/cau-hinh-diem-cau-hoi','API\CauHoiController@layDanhSachCauHinh');
  
    });
});

//Route API nguoi choi
Route::prefix('nguoi-choi')->group(function(){
    Route::name('nguoi-choi.')->group(function(){
        Route::get('/','API\NguoiChoiController@layDanhSach');
        Route::post('/xac-thuc','API\NguoiChoiController@kiemTraDangNhap',function(){});
        Route::post('/dang-ky','API\NguoiChoiController@dangKyTaiKhoan',function(){});
        Route::post('/kiem-tra-ton-tai','API\NguoiChoiController@kiemTraTaiKhoanTonTai',function(){});
        Route::post('/cap-nhat/mat-khau','API\NguoiChoiController@capNhatMatKhau',function(){});
        Route::post('/cap-nhat','API\NguoiChoiController@capNhatNguoiChoi',function(){});
        Route::post('/quen-mat-khau/xac-thuc','API\NguoiChoiController@kiemTraEmailTonTai',function(){});
    });
});

Route::post('thunghiem','API\NguoiChoiController@thuNghiem',function(){});

