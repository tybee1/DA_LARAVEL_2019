<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CauHoi;

class CauHoiController extends Controller
{
    public function layDanhSach()
    {
        $listCauHoi = CauHoi::all();

        $result = [
            'success' => true,
            'data'=> $listCauHoi
        ];
        return response()->json($result);
    }
    public function taoCauHoi(Request $request)
    {
        $noidung=$request->noi_dung;
        $linhvucid=$request->linh_vuc_id;
        $phuongana=$request->phuong_an_a;
        $phuonganb=$request->phuong_an_b;
        $phuonganc=$request->phuong_an_c;
        $phuongand=$request->phuong_an_d;
        $dapan=$request->dap_an;
        
        $cauHoi=new CauHoi;
        $cauHoi->noi_dung=$noidung;
        $cauHoi->linh_vuc_id=$linhvucid;
        $cauHoi->phuong_an_a=$phuongana;
        $cauHoi->phuong_an_b=$phuonganb;
        $cauHoi->phuong_an_c=$phuonganc;
        $cauHoi->phuong_an_d=$phuongand;

        $cauHoi->save();

        return response()->json(['success' => true]);
    }
}
