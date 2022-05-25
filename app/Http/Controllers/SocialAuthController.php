<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class SocialAuthController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {

            $user = Socialite::driver('google')->user();

            $findUser = User::where('email', $user->email)->first();

            if ($findUser) {
                Auth::login($findUser);
                return redirect('/home');
            }
            return redirect('login')->with('error', 'User does not registered!');

        } catch (\Exception $e) {

            return redirect('auth/google');

        }
    }
}
