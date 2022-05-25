<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if (Auth::user()->user_type == 1) {
            return redirect('admin/users');
        } else {
            $users = User::whereNot('id', Auth::user()->id)->with('preferredPartner')->get();
            $currentUser = User::whereId(Auth::user()->id)->with(['preferredPartner.preferredOccupation', 'preferredPartner.preferredFamilyType'])->first();

            $countedUsers = [];
            foreach ($users as $user) {
                $countedUsers[] = $this->calculatePercentage($user);
            }

            array_multisort(array_column($countedUsers, "matchCount"), SORT_DESC, $countedUsers);

            return view('home', compact('countedUsers', 'currentUser'));
        }
    }

    public function calculatePercentage($user)
    {
        $matchCount = 0;
        $currentUser = User::whereId(Auth::user()->id)->with(['preferredPartner.preferredOccupation', 'preferredPartner.preferredFamilyType'])->first();

        if ($currentUser->preferredPartner->preferred_manglik == $user->manglik) {
            $matchCount = $matchCount + 25;
        }
        if (in_array($user->income, range($currentUser->preferredPartner->preferred_income_from, $currentUser->preferredPartner->preferred_income_to))) {
            $matchCount = $matchCount + 25;
        }

        if (in_array($user->occupation, $currentUser->preferredPartner->preferredOccupation->pluck('occupation_id')->toArray())) {
            $matchCount = $matchCount + 25;

        }
        if (in_array($user->family_type, $currentUser->preferredPartner->preferredFamilyType->pluck('family_type_id')->toArray())) {
            $matchCount = $matchCount + 25;
        }
        $user['matchCount'] = $matchCount;
        return $user;
    }
}
