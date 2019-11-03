<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NguoiChoiController extends Controller
{
    public function layDanhSach()
    {
        
    }
    public function kiemTraDangNhap(Request $request)
    {
        if($request->ten_dang_nhap == 'truongvanty' && $request->mat_khau == '123')
            return 'yes';
        return 'no';
    }
}
