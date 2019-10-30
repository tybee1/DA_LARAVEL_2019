<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CauHoi extends Model
{
    protected $table = 'cau_hoi';

    protected function danhSachLinhVuc()
    {
        return LinhVuc::get();
    }
    // protected function layCauHoi_LinhVuc()
    // {
    //     return $this->belongsTo('App\LinhVuc','linh_vuc_id');
    // }
    
}
