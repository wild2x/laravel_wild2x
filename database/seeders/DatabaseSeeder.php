<?php

namespace Database\Seeders;



// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {
      \App\Models\RumahSakitModel::factory(10)->create();
      \App\Models\PasienModel::factory(10)->create();
      
    }
}
