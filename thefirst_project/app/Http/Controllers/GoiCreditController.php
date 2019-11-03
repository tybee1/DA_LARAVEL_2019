<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\GoiCredit;
class GoiCreditController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $goiCredit=DB::table('goi_credit')->get();
        return view('ds-goi-credit',compact('goiCredit'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("them-moi-goi-credit");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $goiCredit=new GoiCredit;
        $goiCredit->ten_goi=$request->ten_goi;
        $goiCredit->credit=$request->credit;
        $goiCredit->so_tien=$request->so_tien;

        $goiCredit->save();
        return redirect()->route('goi-credit.ds-goi-credit');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $goiCredit=GoiCredit::find($id);
        return view('them-moi-goi-credit',compact('goiCredit'));
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
        $goiCredit=GoiCredit::find($id);
        $goiCredit->ten_goi=$request->ten_goi;
        $goiCredit->credit=$request->credit;
        $goiCredit->so_tien=$request->so_tien;
        $goiCredit->save();
        return redirect()->route('goi-credit.ds-goi-credit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $goiCredit=GoiCredit::find($id);
    
        $goiCredit->delete();
        return redirect()->route('goi-credit.ds-goi-credit'); 
    }
}
