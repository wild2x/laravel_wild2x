<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;
class RumahSakitModel extends Model
{
    protected $table = 'rsmaster';
    
    protected $fillable = ['nama', 'alamat', 'email', 'telepon'];

    public function pasien()
    {
        return $this->hasMany(PasienModel::class,'id_rs');
    }
}
