<?php
namespace Database\Factories;

use App\Models\RumahSakitModel;
use Illuminate\Database\Eloquent\Factories\Factory;

class RumahSakitFactory extends Factory
{
    protected $model = RumahSakitModel::class;

    public function definition()
    {
        return [
           'nama' => $this->faker->company,
            'alamat' => $this->faker->address,
            'email' => $this->faker->unique()->safeEmail,
            'telepon' => $this->faker->phoneNumber,
        ];
    }
}
