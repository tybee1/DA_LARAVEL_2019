<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\GoiCredit;
use App\NguoiChoi;
use App\LichSuMuaCredit;

class CreditController extends Controller
{
    public function layDanhSach(){
        $listCredit = GoiCredit::all();
        $result = [
            'success' => true,
            'data' => $listCredit
        ];
        return response()->json($result);
    }
    
    public function updateLichSuMua(Request $request){
        $nguoichoi = NguoiChoi::find($request->id_nguoi_choi);
        $nguoichoi->credit = $nguoichoi->credit + $request->credit;
        $nguoichoi->save();

        
        $luotsumuacredit = new LichSuMuaCredit;
        $luotsumuacredit->nguoi_choi_id = $request->id_nguoi_choi;
        $luotsumuacredit->goi_credit_id = $request->credit_id;
        $luotsumuacredit->credit = $request->credit;
        $luotsumuacredit->so_tien = $request->so_tien;
        $luotsumuacredit->save();


        $result = [
            'success' => true,
        ];
        return response()->json($result);
    }
}
