<?php

namespace Database\Factories;

use App\Models\Patient;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\odel=Patient>
 */
class PatientFactory extends Factory
{
    protected $model = Patient::class;
    public function definition(): array
    {
        return [
                'name' => fake()->name(),

            'email' => fake()->unique()->safeEmail(),

            'phone' => fake()->numerify('##########'),

            'dob' => fake()->date(),
        ];
    }
}
