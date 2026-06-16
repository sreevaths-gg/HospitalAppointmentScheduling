<?php

namespace Database\Factories;
use App\Models\Department;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\odel=Department>
 */
class DepartmentFactory extends Factory
{
    protected $model = Department::class;
    public function definition(): array
    {
        return [
             'name' => fake()->unique()->words(2, true),
            'description' => fake()->sentence(),
        ];
    }
}
