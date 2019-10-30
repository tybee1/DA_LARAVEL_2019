<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\LinhVuc;

class LinhVucController extends Controller
{
    public function layDanhSach(){
        $listLinhVuc = LinhVuc::all();
        $result = [
            'success' => true,
            'data' => $listLinhVuc,
        ];
        return response()->json($result);
    }

    public function taoLinhVuc(Request $request){
            $ten = $request->ten_linh_vuc;
            $linhVuc=new LinhVuc;
            $linhVuc->ten_linh_vuc=$ten;
            $linhVuc->save();
        
     return response()->json(['success'=>true]);
    }
}
