<?php

namespace Database\Factories;
use App\Models\Appointment;
use App\Models\Doctor;
use App\Models\Patient;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\odel=Appointment>
 */
class AppointmentFactory extends Factory
{
    protected $model = Appointment::class;
    public function definition(): array
    {
        return [
              'doctor_id' => Doctor::inRandomOrder()->value('id'),

            'patient_id' => Patient::inRandomOrder()->value('id'),

            'appointment_datetime' =>
                fake()->dateTimeBetween(
                    '-1 month',
                    '+3 months'
                ),

            'duration' =>
                fake()->randomElement([
                    15,
                    30,
                    45,
                    60
                ]),

            'status' =>
                fake()->randomElement([
                    'scheduled',
                    'completed',
                    'cancelled'
                ]),
        ];
    }
}
