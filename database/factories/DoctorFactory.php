<?php

namespace Database\Factories;
use App\Models\Department;
use App\Models\Doctor;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\odel=Doctor>
 */
class DoctorFactory extends Factory
{
    protected $model = Doctor::class;
    public function definition(): array
    {
        return [
            'department_id' => Department::inRandomOrder()->value('id'),
            'name' => fake()->name(),
            'specialization' => fake()->randomElement([
                'Cardiology', 'Neurology', 'Pediatrics',
                'Orthopedics', 'Dermatology'
            ]),
            'email' => fake()->safeEmail(),
            'phone' => fake()->phoneNumber(),

        ];
    }
}
