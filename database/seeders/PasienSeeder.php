<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\PasienModel;

class RumahSakitSeeder extends Seeder
{
    public function run()
    {
        // Generate 10 data rumah sakit secara acak
        PasienModel::factory()->count(10)->create();
    }
}
