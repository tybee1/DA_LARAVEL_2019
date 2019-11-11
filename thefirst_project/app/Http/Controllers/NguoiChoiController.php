<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

use App\NguoiChoi;
class NguoiChoiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $nguoiChoi=DB::table('nguoi_choi')->get();
        return view('ds-nguoi-choi',compact('nguoiChoi'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('them-nguoi-choi');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $nguoiChoi=new NguoiChoi;
        $nguoiChoi->ten_dang_nhap=$request->ten_dang_nhap;
        $nguoiChoi->mat_khau= Hash::make($request->mat_khau);
        $nguoiChoi->email=$request->email;
        $nguoiChoi->hinh_dai_dien=$request->hinh_dai_dien;
        $nguoiChoi->diem_cao_nhat=$request->diem_cao_nhat;
        $nguoiChoi->credit=$request->credit;
        $nguoiChoi->save();
        return redirect()->route('nguoi-choi.ds-nguoi-choi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $nguoiChoi=NguoiChoi::find($id);
        return view('them-nguoi-choi',compact('nguoiChoi'));

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
        $nguoiChoi=NguoiChoi::find($id);
        $nguoiChoi->ten_dang_nhap=$request->ten_dang_nhap;
        $nguoiChoi->mat_khau=Hask::make($request->mat_khau);
        $nguoiChoi->email=$request->email;
        $nguoiChoi->hinh_dai_dien=$request->hinh_dai_dien;
        $nguoiChoi->diem_cao_nhat=$request->diem_cao_nhat;
        $nguoiChoi->credit=$request->credit;
        $nguoiChoi->save();
        return redirect()->route('nguoi-choi.ds-nguoi-choi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $nguoiChoi = NguoiChoi::find($id);
        $nguoiChoi->SoftDelete();

        return redirect()->route('nguoi-choi.ds-nguoi-choi');
    }
}
