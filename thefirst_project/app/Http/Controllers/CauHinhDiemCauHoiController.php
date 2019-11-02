<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\CauHinhDiemCauHoi;

class CauHinhDiemCauHoiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $cauHinhDiemCauHoi=DB::table('cau_hinh_diem_cau_hoi')->get();
      return view('ds-cau-hinh-diem-cau-hoi',compact('cauHinhDiemCauHoi'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("them-moi-cau-hinh-diem-cau-hoi");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cauHinhDiemCauHoi=new CauHinhDiemCauHoi;
        $cauHinhDiemCauHoi->thu_tu=$request->thu_tu;
        $cauHinhDiemCauHoi->diem=$request->diem;
        $cauHinhDiemCauHoi->save();
        return redirect()->route('cau-hinh-diem-cau-hoi.ds-cau-hinh-diem-cau-hoi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $cauHinhDiemCauHoi=CauHinhDiemCauHoi::find($id);
        return view('them-moi-cau-hinh-diem-cau-hoi',compact('cauHinhDiemCauHoi'));
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
        $cauHinhDiemCauHoi=CauHinhDiemCauHoi::find($id);
        $cauHinhDiemCauHoi->thu_tu=$request->thu_tu;
        $cauHinhDiemCauHoi->diem=$request->diem;
        $cauHinhDiemCauHoi->save();
        return redirect()->route('cau-hinh-diem-cau-hoi.ds-cau-hinh-diem-cau-hoi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cauHinhDiemCauHoi=CauHinhDiemCauHoi::find($id);
        $cauHinhDiemCauHoi->delete();
        return redirect()->route('cau-hinh-diem-cau-hoi.ds-cau-hinh-diem-cau-hoi');
    }
}
