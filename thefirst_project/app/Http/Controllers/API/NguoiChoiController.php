<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\NguoiChoi;
use Illuminate\Support\Facades\Hash;

class NguoiChoiController extends Controller
{
    public function layDanhSach()
    {
        $listNguoiChoi = NguoiChoi::danhSachXepHang();
        $result = [
            'success' => true,
            'data' => $listNguoiChoi
        ];
        return response()->json($result);
    }
    public function capNhatMatKhau(Request $request)
    {
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        
        if($nguoiChoi != null)
        {
            $nguoiChoi->mat_khau = Hash::make($request->mat_khau);
            $nguoiChoi->save();
            $result = [
                'success' => true,
                'data' => [$nguoiChoi]
            ];
            return response()->json($result);
        }
        return response()->json(['success' => false]); 
    }
    public function kiemTraTaiKhoanTonTai(Request $request)
    {
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        if($nguoiChoi != null)
        {
            $result = [
                'success' => true,
            ];
            return response()->json($result);
        }
        return response()->json(['success' => false]); 
    }
    
    public function kiemTraDangNhap(Request $request)
    {
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        
        if($nguoiChoi != null &&  Hash::check( $request->mat_khau, $nguoiChoi->mat_khau))
        {
            
            $result = [
                'success' => true,
                'data' => [$nguoiChoi]
            ];
            return response()->json($result);
        }
        return response()->json(['success' => false]);    
    }

        

    public function dangKyTaiKhoan(Request $request)
    {
        //kiểm tra tài khoản đã tồn tại chưa
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();

        //gán cờ bằng false(không đăng ký được)
        $flag = false;

        //tạo account khi Tk chưa tồn tại
        if($nguoiChoi == null)
        {
            $nguoiChoi=new NguoiChoi;
            $nguoiChoi->ten_dang_nhap=$request->ten_dang_nhap;
            $nguoiChoi->mat_khau= Hash::make($request->mat_khau);
            $nguoiChoi->email=$request->email;
            $nguoiChoi->hinh_dai_dien='null.png';
            $nguoiChoi->diem_cao_nhat=0;
            $nguoiChoi->credit=0;
            $nguoiChoi->save();

            $flag = true;
        }
        
        return response()->json( [ 'success' => $flag]);
    }

}
