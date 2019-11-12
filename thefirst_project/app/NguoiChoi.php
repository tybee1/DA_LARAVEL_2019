<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class NguoiChoi extends Model
{
    protected $table = 'nguoi_choi';
<<<<<<< HEAD
<<<<<<< HEAD
    use SoftDeletes;
=======
=======
>>>>>>> 17798dd382f77292815b76f739fe0ce652a84a62

    protected function danhSachXepHang()
    {
        return $this->orderBy('diem_cao_nhat', 'DESC')->get();
    }
<<<<<<< HEAD
>>>>>>> 17798dd382f77292815b76f739fe0ce652a84a62
=======
>>>>>>> 17798dd382f77292815b76f739fe0ce652a84a62
}
