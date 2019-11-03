<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\CauHinhTroGiup;
class CauHinhTroGiupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cauHinhTroGiup=DB::table('cau_hinh_tro_giup')->get();
        return view('ds-cau-hinh-tro-giup',compact('cauHinhTroGiup'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return  view("them-moi-cau-hinh-tro-giup");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cauHinhTroGiup=new CauHinhTroGiup;
        $cauHinhTroGiup->loai_tro_giup=$request->loai_tro_giup; 
        $cauHinhTroGiup->thu_tu=$request->thu_tu;
        $cauHinhTroGiup->credit=$request->credit;      
        $cauHinhTroGiup->save();
        return redirect()->route('cau-hinh-tro-giup.ds-cau-hinh-tro-giup');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          
        $cauHinhTroGiup=CauHinhTroGiup::find($id);
        return view('them-moi-cau-hinh-tro-giup',compact('cauHinhTroGiup'));
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
        $cauHinhTroGiup=CauHinhTroGiup::find($id);
        $cauHinhTroGiup->loai_tro_giup=$request->loai_tro_giup; 
        $cauHinhTroGiup->thu_tu=$request->thu_tu;
        $cauHinhTroGiup->credit=$request->credit;      
        $cauHinhTroGiup->save();
        return redirect()->route('cau-hinh-tro-giup.ds-cau-hinh-tro-giup');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cauHinhTroGiup=CauHinhTroGiup::find($id);
        $cauHinhTroGiup->delete();
        return redirect()->route('cau-hinh-tro-giup.ds-cau-hinh-tro-giup');
    }
}
