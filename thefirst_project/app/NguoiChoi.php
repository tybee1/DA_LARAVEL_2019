<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class NguoiChoi extends Model
{

    protected $table = 'nguoi_choi';

    protected function danhSachXepHang()
    {
        return $this->orderBy('diem_cao_nhat', 'DESC')->get();
    }
}
