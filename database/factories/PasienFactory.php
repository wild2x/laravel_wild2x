<?php
namespace Database\Factories;

use App\Models\PasienModel;
use Illuminate\Database\Eloquent\Factories\Factory;

class RumahSakitFactory extends Factory
{
    protected $model = PasienModel::class;

    public function definition()
    {
        return [
            'nama' => $this->faker->name,
            'alamat' => $this->faker->address,
            'email' => $this->faker->unique()->safeEmail,
            'telepon' => $this->faker->phoneNumber,
            'id_rs' => $this->faker->id,
        ];
    }
}
