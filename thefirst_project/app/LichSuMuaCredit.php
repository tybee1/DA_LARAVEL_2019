<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LichSuMuaCredit extends Model
{
    protected $table='lich_su_mua_credit';
    use SoftDeletes;
}
