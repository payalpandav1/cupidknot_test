@extends('layouts.app')

@section('content')
    <div class="container">
        <h3>Logged in User details</h3>
        <div class="row">
            <div class="col-6">
                <span>Name: <b>{{$currentUser->name}}</b></span><br>
                <span>Email: <b>{{$currentUser->email}}</b></span><br>
                <span>Gender: <b>{{$currentUser->gender}}</b></span><br>
                <span>DOB: <b>{{$currentUser->dob}}</b></span><br>
                <span>Income: <b>{{$currentUser->income}}</b></span><br>
                <span>Occupation: <b>{{$currentUser->occupation == 1? "Private job" : ($currentUser->occupation == 2 ? "Government Job" : "Business") }}</b></span><br>
                <span>Family type: <b>{{$currentUser->family_type == 1 ? "Joint family" : "Nuclear family"}}</b></span><br>
                <span>Manglik: <b>{{$currentUser->manglik}}</b></span><br>
            </div>
        </div>
        <br>
        <br>


        <h3>Suggested Partner</h3>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="row">
                    @foreach($countedUsers as $user)
                        <div class="col-md-3 mb-3">
                            <div class="card text-center">
                                <div class="card-header">
                                    {{$user->name}}
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">{{$user->email}}</h5>
                                    <span>Gender: <b>{{$user->gender}}</b></span><br>
                                    <span>DOB: <b>{{$user->dob}}</b></span><br>
                                    <span>Income: <b>{{$user->income}}</b></span><br>
                                    <span>Occupation: <b>{{$user->occupation == 1? "Private job" : ($user->occupation == 2 ? "Government Job" : "Business") }}</b></span><br>
                                    <span>Family type: <b>{{$user->family_type == 1 ? "Joint family" : "Nuclear family"}}</b></span><br>
                                    <span>Manglik: <b>{{$user->manglik}}</b></span><br>
                                </div>
                                <div class="card-footer text-muted">
                                    Match <b>{{$user->matchCount}}</b> %
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
