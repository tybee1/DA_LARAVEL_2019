<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CauHoi;
use App\CauHinhDiemCauHoi;

class CauHoiController extends Controller
{
    public function layDanhSach(Request $request)
    {
        $listCauHoi = CauHoi::where("linh_vuc_id", $request->linh_vuc_id)->get();

        $result = [
            'success' => true,
            'data'=> $listCauHoi
        ];
        return response()->json($result);
    }
    public function layDanhSachCauHinh()
    {
        $listCauHinh = CauHinhDiemCauHoi::all();

        $result = [
            'success' => true,
            'data'=> $listCauHinh
        ];
        return response()->json($result);
    }

}
