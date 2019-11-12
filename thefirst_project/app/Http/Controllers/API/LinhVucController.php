<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\LinhVuc;

class LinhVucController extends Controller
{
    public function layDanhSach(){

        //lay danh sach linh vuc tu model
        $listLinhVuc = LinhVuc::all();

        //json
        $result = [
            'success' => true,
            'data' => $listLinhVuc,
        ];
        return response()->json($result);
    }
}
