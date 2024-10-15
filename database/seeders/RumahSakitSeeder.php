<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\RumahSakitModel;

class RumahSakitSeeder extends Seeder
{
    public function run()
    {
        // Generate 10 data rumah sakit secara acak
        RumahSakitModel::factory()->count(10)->create();
    }
}
