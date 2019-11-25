<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\LinhVuc;

class LinhVucController extends Controller
{
    public function layDanhSach(){

        //lay danh sach linh vuc tu model
        $listLinhVuc = LinhVuc::all()->random(4);

        //json
        $result = [
            'success' => true,
            'data' => $listLinhVuc,
        ];
        return response()->json($result);
    }

    public function thuNghiem(Request $request)
    {
        
        // $nguoiChoi = NguoiChoi::where('ten_dang_nhap', $request->ten_dang_nhap )->first();
        $flag = true;
        // if($nguoiChoi != null)
        // {
           
        //     $nguoiChoi->hinh_dai_dien = $request->image;
        //     $nguoiChoi->save();
        //     $flag = true;
        //     return response()->json(['success' => $flag]);
        // }
        return response()->json(['success' => $flag]); 
    }
}
