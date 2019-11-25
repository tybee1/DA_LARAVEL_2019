<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\NguoiChoi;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;


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
        $flag = false;
        if($nguoiChoi != null)
        {
            $nguoiChoi->mat_khau = Hash::make($request->mat_khau);
            $nguoiChoi->save();
            $flag = true;
            return response()->json(['success' => $flag]);
        }
        return response()->json(['success' => $flag]); 
    }
    public function capNhatNguoiChoi(Request $request)
    {
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        $flag = false;
        if($nguoiChoi != null)
        {
            //giải mã base64
            $img_decode = base64_decode($request->hinh_dai_dien);
            if($request->mat_khau != "")
                $nguoiChoi->mat_khau = Hash::make($request->mat_khau);
            //lưu file ảnh
            Storage::put("AnhCuaTy/".$request->ten_dang_nhap.".jpeg",$img_decode);
            $nguoiChoi->save();
            $flag = true;
            return response()->json(['success' => $flag]);
        }
        return response()->json(['success' => $flag]); 
    }
    public function kiemTraEmailTonTai(Request $request)
    {
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        if($nguoiChoi != null && $request->email == $nguoiChoi->email)
        {
            $result = [
                'success' => true,
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
    
        
        if($nguoiChoi != null && Hash::check($request->mat_khau,$nguoiChoi->mat_khau))
        {
            // $nguoiChoi->mat_khau=Hash::make("truongvanty");
            // $nguoiChoi->save();
            //lấy ảnh 
            $img_encode = base64_encode( Storage::get('AnhCuaTy/'.$nguoiChoi->ten_dang_nhap.'.jpeg'));
            $result = [
                'success' => true,
                'data' => [$nguoiChoi],
                "image" => $img_encode,
                
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

    public function thuNghiem(Request $request)
    {
        
        $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        $flag = false;
        if($nguoiChoi != null)
        {
           
            $img_encode = base64_encode( Storage::get('AnhCuaTy/'.$nguoiChoi->ten_dang_nhap.'.jpeg'));
            $nguoiChoi->hinh_dai_dien = $img_encode;
           
            
            $flag = true;
            return response()->json(['success' => $flag, 'image' =>  [$nguoiChoi]]);
        }
        return response()->json(['success' => $flag]); 
    }

 

}
