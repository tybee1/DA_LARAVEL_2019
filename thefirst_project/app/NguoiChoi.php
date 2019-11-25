<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class NguoiChoi extends Model
{
    protected $table = 'nguoi_choi';


    protected function danhSachXepHang()
    {
        return $this->orderBy('diem_cao_nhat', 'DESC')->get();
    }

}
