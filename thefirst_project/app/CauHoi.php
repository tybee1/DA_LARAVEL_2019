<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class CauHoi extends Model
{
    protected $table = 'cau_hoi';
    use SoftDeletes;
    protected function danhSachLinhVuc()
    {
        return LinhVuc::get();
    }
    // protected function layCauHoi_LinhVuc()
    // {
    //     return $this->belongsTo('App\LinhVuc','linh_vuc_id');
    // }
    
}
