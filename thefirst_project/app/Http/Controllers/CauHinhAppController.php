<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\CauHinhApp;

class CauHinhAppController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cauHinhApp=DB::table('cau_hinh_app')->get();
        return view('ds-cau-hinh-app',compact('cauHinhApp'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("them-moi-cau-hinh-app");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cauHinhApp=new CauHinhApp;
        $cauHinhApp->cau_hoi_sai=$request->cau_hoi_sai;
        $cauHinhApp->thoi_gian_tra_loi=$request->thoi_gian_tra_loi;
        $cauHinhApp->save();
        return redirect()->route('cau-hinh-app.ds-cau-hinh-app');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {  
        $cauHinhApp=CauHinhApp::find($id);
        return view('them-moi-cau-hinh-app',compact('cauHinhApp'));
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
        $cauHinhApp=CauHinhApp::find($id);
        $cauHinhApp->cau_hoi_sai=$request->cau_hoi_sai;
        $cauHinhApp->thoi_gian_tra_loi=$request->thoi_gian_tra_loi;
        $cauHinhApp->save();
        return redirect()->route('cau-hinh-app.ds-cau-hinh-app');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cauHinhApp=CauHinhApp::find($id);
        $cauHinhApp->delete();
        return redirect()->route('cau-hinh-app.ds-cau-hinh-app');
    }
}
