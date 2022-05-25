<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make(123456),
            'gender' => 'female',
            'dob' => $faker->date,
            'income' => rand(1, 500),
            'occupation' => $faker->randomElement([1, 2, 3]),
            'family_type' => $faker->randomElement([1, 2]),
            'manglik' => $faker->randomElement(["yes", "no"]),
            'user_type' => 1
        ]);
    }
}
