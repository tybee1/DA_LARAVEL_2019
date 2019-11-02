<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\CauHoi;
class CauHoiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cauHoi=DB::table('cau_hoi')->get();
        return view('ds-cau-hoi',compact('cauHoi')); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $linhVucCauHoi = CauHoi::danhSachLinhVuc();
        return view('them-moi-cau-hoi', compact('linhVucCauHoi'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cauHoi = new CauHoi;
        $cauHoi->linh_vuc_id = $request->linh_vuc_id;
        $cauHoi->noi_dung = $request->noi_dung;
        $cauHoi->phuong_an_a = $request->phuong_an_a;
        $cauHoi->phuong_an_b = $request->phuong_an_b;
        $cauHoi->phuong_an_c = $request->phuong_an_c;
        $cauHoi->phuong_an_d = $request->phuong_an_d;
        $cauHoi->dap_an = $request->dap_an;
        $cauHoi->save();

        return redirect()->route('cau-hoi.ds-cau-hoi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $cauHoi = CauHoi::find($id);
        $linhVucCauHoi = CauHoi::danhSachLinhVuc();

        return view('them-moi-cau-hoi',compact('cauHoi'), compact('linhVucCauHoi'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $cauHoi =  CauHoi::find($id);
        $cauHoi->linh_vuc_id = $request->linh_vuc_id;
        $cauHoi->noi_dung = $request->noi_dung;
        $cauHoi->phuong_an_a = $request->phuong_an_a;
        $cauHoi->phuong_an_b = $request->phuong_an_b;
        $cauHoi->phuong_an_c = $request->phuong_an_c;
        $cauHoi->phuong_an_d = $request->phuong_an_d;
        $cauHoi->dap_an = $request->dap_an;
        $cauHoi->save();
        return redirect()->route('cau-hoi.ds-cau-hoi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cauHoi = CauHoi::find($id);
        $cauHoi->delete();

        return redirect()->route('cau-hoi.ds-cau-hoi');
    }
}
