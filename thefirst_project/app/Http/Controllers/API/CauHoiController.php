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
        $listCauHoi = CauHoi::where('linh_vuc_id', $id)->get();
        $result = [
            'success' => true,
            'data' => $listCauHoi];

        return response()->json($result);
    }
}
