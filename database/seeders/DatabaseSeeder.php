<?php

namespace Database\Seeders;
use App\Models\Department;
use App\Models\Appointment;
use App\Models\Doctor;
use App\Models\Patient;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
         Department::factory(20)->create();
          Doctor::factory(50)->create();
          Patient::factory(50)->create();
           Appointment::factory(100)->create();
    }
}
