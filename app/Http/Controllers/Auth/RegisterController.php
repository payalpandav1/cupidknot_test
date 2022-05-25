<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\PreferredFamilyTypes;
use App\Models\PreferredOccupation;
use App\Models\PreferredPartners;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use phpDocumentor\Reflection\Types\True_;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'gender' => ['required'],
            'dob' => ['required', 'date'],
            'income' => ['required', 'integer'],
            'family_type' => ['required'],
            'occupation' => ['required'],
            'manglik' => ['required'],
            'preferred_income' => ['required'],
            'preferred_manglik' => ['required'],

        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param array $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        try {
            DB::beginTransaction();
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => Hash::make($data['password']),
                'gender' => $data['gender'],
                'dob' => $data['dob'],
                'income' => $data['income'],
                'occupation' => $data['occupation'],
                'family_type' => $data['family_type'],
                'manglik' => $data['manglik'],

            ]);

            $preferredIncome = explode('-', $data['preferred_income']);
            $partner = PreferredPartners::create([
                'user_id' => $user->id,
                'preferred_income_from' => $preferredIncome[0],
                'preferred_income_to' => $preferredIncome[1],
                'preferred_manglik' => $data['preferred_manglik'],
            ]);
            foreach ($data['preferred_occupation'] as $occupation) {
                PreferredOccupation::upsert([
                    ['partner_id' => $partner->id, 'occupation_id' => $occupation],
                ], ['partner_id', 'occupation_id']);
            }

            foreach ($data['preferred_family_type'] as $type) {
                PreferredFamilyTypes::upsert([
                    ['partner_id' => $partner->id, 'family_type_id' => $type],
                ], ['partner_id', 'occupation_id']);
            }

            return $user;
        } catch (\Exception $e) {
            DB::rollback();
            return $e->getMessage();
        }
    }
}
