<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



// Route::get('/User/{id}', function($id){
//     return 'User'.$id;
// });

//Route đăng nhập
Route::get('dang-nhap','QuanTriVienController@dangNhap')->name('dang-nhap');
Route::post('dang-nhap','QuanTriVienController@xuLyDangNhap')->name('xl-dang-nhap');
Route::get('dang-xuat','QuanTriVienController@xuLyDangXuat')->name('dang-xuat');


Route::middleware('auth')->group(function(){
    Route::get('/', function () {
        return view('layout');   
    })->name('trang-chu');

    //route Lĩnh vực
    Route::prefix('linh-vuc')->group(function (){
        Route::name('linh-vuc.')->group(function(){
            Route::get('/','LinhVucController@index' ,function (){
                })->name('danh-sach');
    //route thêm mới lĩnh vực
            Route::get('/them-moi','LinhVucController@create', function () {            
                })->name('them-moi');
            Route::post('/them-moi','LinhVucController@store', function () {            
                })->name('xl-them-moi');
    //route cập nhật lĩnh vực
            Route::get('/cap-nhat/{id}','LinhVucController@show')->name('cap-nhat');
            Route::post('/xl-cap-nhat/{id}','LinhVucController@update', function ($id) {            
                })->name('xl-cap-nhat'); 
    //route xóa lĩnh vực    
            Route::get('/xoa/{id}','LinhVucController@destroy',function($id){
            })->name('xl-xoa');
        }); 
    });
    //route câu hỏi
    Route::prefix('cau-hoi')->group(function(){
        Route::name('cau-hoi.')->group(function(){
            Route::get('/','CauHoiController@index',function(){
                })->name('ds-cau-hoi');
    //Thêm mới câu hỏi            
            Route::get('them-moi', 'CauHoiController@create', function(){
            })->name('them-moi');
            Route::post('/them-moi','CauHoiController@store',function(){
            })->name('xl-them-moi');
    //Cập nhật câu hỏi        
            Route::get('/cap-nhat/{id}','CauHoiController@show', function($id){
            })->name('cap-nhat');
            Route::post('/cap-nhat/{id}','CauHoiController@update', function($id){
            })->name('xl-cap-nhat');
    //Xóa câu hỏi        
            Route::get('/xoa/{id}', 'CauHoiController@destroy',function($id){
            })->name('xoa');
        });
    });
    //route người chơi
    Route::prefix('nguoi-choi')->group(function(){
        Route::name('nguoi-choi.')->group(function(){
            Route::get('/','NguoiChoiController@index',function(){
                })->name('ds-nguoi-choi'); 
    //route thêm người chơi
            Route::get('them-moi', 'NguoiChoiController@create', function(){
            })->name('them-moi');
            Route::post('/them-moi','NguoiChoiController@store',function(){
            })->name('xl-them-moi'); 
    //ruote cập nhật người chơi
            Route::get('/cap-nhat/{id}','NguoiChoiController@show', function($id){
            })->name('cap-nhat');
            Route::post('/cap-nhat/{id}','NguoiChoiController@update', function($id){
            })->name('xl-cap-nhat');
    //route xóa người chơi
            Route::get('/xoa/{id}','NguoiChoiController@destroy', function($id){
            })->name('xl-xoa');
        });
    }); 
    //route quản trị viên
    Route::prefix('quan-tri-vien')->group(function(){
        Route::name('quan-tri-vien.')->group(function(){            
            Route::get('/','QuanTriVienController@index',function(){
            })->name('ds-quan-tri-vien');
        });
    });
    //route cấu hình app
    Route::prefix('cau-hinh-app')->group(function(){
        Route::name('cau-hinh-app.')->group(function(){
            Route::get('/','CauHinhAppController@index',function(){
            })->name('ds-cau-hinh-app');
    //route thêm mới cấu hình app
            Route::get('them-moi', 'CauHinhAppController@create', function(){
            })->name('them-moi');
            Route::post('/them-moi','CauHinhAppController@store',function(){
            })->name('xl-them-moi');
    //Route cập nhật cấu hình app  
            Route::get('/cap-nhat/{id}','CauHinhAppController@show', function($id){
            })->name('cap-nhat');
            Route::post('/cap-nhat/{id}','CauHinhAppController@update', function($id){
            })->name('xl-cap-nhat');
    //route xóa cấu hình app
            Route::get('/xoa/{id}','CauHinhAppController@destroy', function($id){
            })->name('xl-xoa');        
        });
    });
    //route cấu hình điểm câu hỏi
    Route::prefix('cau-hinh-diem-cau-hoi')->group(function(){
        Route::name('cau-hinh-diem-cau-hoi.')->group(function(){
            Route::get('/','CauHinhDiemCauHoiController@index',function(){            
            })->name('ds-cau-hinh-diem-cau-hoi');
    //route thêm mới cấu hình điểm câu hỏi        
            Route::get('them-moi', 'CauHinhDiemCauHoiController@create', function(){
            })->name('them-moi');
            Route::post('/them-moi','CauHinhDiemCauHoiController@store',function(){
            })->name('xl-them-moi');
    //Route cập nhật cấu hình điểm câu hỏi         
            Route::get('/cap-nhat/{id}','CauHinhDiemCauHoiController@show', function($id){
            })->name('cap-nhat');
            Route::post('/cap-nhat/{id}','CauHinhDiemCauHoiController@update', function($id){
            })->name('xl-cap-nhat');
    //route xóa cấu hình điểm câu hỏi 
            Route::get('/xoa/{id}','CauHinhDiemCauHoiController@destroy', function($id){
            })->name('xl-xoa');
        });
    });
    //route cấu hình trợ giúp
    Route::prefix('cau-hinh-tro-giup')->group(function(){
        Route::name('cau-hinh-tro-giup.')->group(function(){
            Route::get('/','CauHinhTroGiupController@index',function(){            
            })->name('ds-cau-hinh-tro-giup');
    //route thêm mới cấu hình trợ giúp        
            Route::get('them-moi', 'CauHinhTroGiupController@create', function(){
            })->name('them-moi');
            Route::post('/them-moi','CauHinhTroGiupController@store',function(){
            })->name('xl-them-moi');
    //Route cập nhật cấu hình trợ giúp           
            Route::get('/cap-nhat/{id}','CauHinhTroGiupController@show', function($id){
            })->name('cap-nhat');
            Route::post('/cap-nhat/{id}','CauHinhTroGiupController@update', function($id){
            })->name('xl-cap-nhat');
    //route xóa cấu hình trợ giúp    
            Route::get('/xoa/{id}','CauHinhTroGiupController@destroy', function($id){
            })->name('xl-xoa');
        });
    });
    //route chi tiết lượt chơi
    Route::prefix('chi-tiet-luot-choi')->group(function(){
        Route::name('chi-tiet-luot-choi.')->group(function(){
            Route::get('/','ChiTietLuotChoiController@index',function(){
            })->name('ds-chi-tiet-luot-choi');
        });
    });
    
    //route gói credit
    Route::prefix('goi-credit')->group(function(){
        Route::name('goi-credit.')->group(function(){
            Route::get('/','GoiCreditController@index',function(){
            })->name('ds-goi-credit');
    //route thêm mới gói credit      
            Route::get('them-moi', 'GoiCreditController@create', function(){
            })->name('them-moi');
            Route::post('/them-moi','GoiCreditController@store',function(){
            })->name('xl-them-moi');
    //Route cập nhật gói credit     
            Route::get('/cap-nhat/{id}','GoiCreditController@show', function($id){
            })->name('cap-nhat');
            Route::post('/cap-nhat/{id}','GoiCreditController@update', function($id){
            })->name('xl-cap-nhat');   
    //route xóa gói credit
            Route::get('/xoa/{id}','GoiCreditController@destroy', function($id){
            })->name('xl-xoa');
        });
    });
    
    //route lịch sử mua credit
    Route::prefix('lich-su-mua-credit')->group(function(){
        Route::name('lich-su-mua-credit.')->group(function(){
            Route::get('/','LichSuMuaCreditController@index',function(){
            })->name('ds-lich-su-mua-credit');
        });
    });
    
    //route lượt chơi
    Route::prefix('luot-choi')->group(function(){
        Route::name('luot-choi.')->group(function(){
            Route::get('/','LuotChoiController@index',function(){
            })->name('ds-luot-choi');
        });
    });
});


Route::get('/User/ty/{id?}', function($id = 'null'){
    return 'User'.$id;
});


