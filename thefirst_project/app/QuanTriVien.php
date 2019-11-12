<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
class QuanTriVien extends Authenticatable
{
    protected $table = 'quan_tri_vien';
    use SoftDeletes;
    public function getPasswordAttribute()
    {
        return $this->mat_khau;
    }
}
