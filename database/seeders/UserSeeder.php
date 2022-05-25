<?php

namespace Database\Seeders;

use App\Models\PreferredFamilyTypes;
use App\Models\PreferredOccupation;
use App\Models\PreferredPartners;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < 25; $i++) {
            $user = User::create([
                'name' => $faker->name(),
                'email' => $faker->safeEmail,
                'password' => Hash::make($faker->password(8)),
                'gender' => $faker->randomElement(["male", "female"]),
                'dob' => $faker->date,
                'income' => rand(1, 500),
                'occupation' => $faker->randomElement([1, 2, 3]),
                'family_type' => $faker->randomElement([1, 2]),
                'manglik' => $faker->randomElement(["yes", "no"]),
            ]);

            $randomIncome = rand(0, 10) . '-' . rand(300, 500);
            $preferredIncome = explode('-', $randomIncome);

            $partner = PreferredPartners::create([
                'user_id' => $user->id,
                'preferred_income_from' => $preferredIncome[0],
                'preferred_income_to' => $preferredIncome[1],
                'preferred_manglik' => $faker->randomElement(["yes", "no"]),
            ]);

            $preferredOccupation = $faker->randomElement($array = [[1, 2, 3]], rand(1, 2));
            foreach ($preferredOccupation as $occupation) {
                PreferredOccupation::upsert([
                    ['partner_id' => $partner->id, 'occupation_id' => $occupation],
                ], ['partner_id', 'occupation_id']);
            }

            $preferredFamily = $faker->randomElement($array = [[1, 2]], rand(1, 1));
            foreach ($preferredFamily as $type) {
                PreferredFamilyTypes::upsert([
                    ['partner_id' => $partner->id, 'family_type_id' => $type],
                ], ['partner_id', 'occupation_id']);
            }
        }
    }
}
