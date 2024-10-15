<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;
class PasienModel extends Model
{
    //use HasFactory;
    protected $table = 'pasien';

    protected $fillable = ['nama', 'alamat', 'email', 'telepon','id_rs'];

    public function rumahSakit()
    {
        return $this->belongsTo(RumahSakitModel::class,'id_rs');
    }
}
