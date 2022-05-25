@extends('layouts.app')

@section('content')

    <div class="container">
        @if($errors->any())
            {!! implode('', $errors->all('<div class="alert alert-danger">:message</div>')) !!}
        @endif
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Register') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf

                            <h3>Basic Information Section</h3><br>

                            <div class="row mb-3">
                                <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>

                                <div class="col-md-6">
                                    <input id="name" type="text"
                                           class="form-control @error('name') is-invalid @enderror" name="name"
                                           value="{{ old('name') }}" autocomplete="name" autofocus required>

                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="email"
                                           class="form-control @error('email') is-invalid @enderror" name="email"
                                           value="{{ old('email') }}" autocomplete="email" required>

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="dob" class="col-md-4 col-form-label text-md-end">Date of Birth</label>

                                <div class="col-md-6">
                                    <input id="dob" type="date" class="form-control @error('dob') is-invalid @enderror"
                                           name="dob" required>
                                    @error('dob')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="gender" class="col-md-4 col-form-label text-md-end">gender</label>

                                <div class="col-md-6">
                                    <input id="gender_1" type="radio" class="form-control" name="gender" value="male"
                                           checked> Male
                                    <input id="gender_2" type="radio" class="form-control" name="gender" value="female"
                                           checked> Female

                                    @error('gender_1')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="income" class="col-md-4 col-form-label text-md-end">Annual Income</label>

                                <div class="col-md-6">
                                    <input id="income" type="text"
                                           class="form-control @error('income') is-invalid @enderror" name="income"
                                           required>
                                    @error('income')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="occupation" class="col-md-4 col-form-label text-md-end">Occupation</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="occupation" id="occupation" required>
                                        <option value="1">Private job</option>
                                        <option value="2">Government Job</option>
                                        <option value="3">Business</option>
                                    </select>

                                    @error('occupation')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="family_type" class="col-md-4 col-form-label text-md-end">family type</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="family_type" id="family_type" required>
                                        <option value="1">Joint family</option>
                                        <option value="2">Nuclear family</option>
                                    </select>

                                    @error('family_type')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="manglik" class="col-md-4 col-form-label text-md-end">Manglik</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="manglik" id="manglik" required>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>

                                    @error('manglik')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="password"
                                       class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                                <div class="col-md-6">
                                    <input id="password" type="password"
                                           class="form-control @error('password') is-invalid @enderror" name="password"
                                           autocomplete="new-password" required>
                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror

                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="password-confirm"
                                       class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label>

                                <div class="col-md-6">
                                    <input id="password-confirm" type="password" class="form-control"
                                           name="password_confirmation" autocomplete="new-password" required>

                                    @error('password_confirmation')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <h3>Partner Preference</h3><br>

                            <div class="row mb-3">
                                <label for="income" class="col-md-4 col-form-label text-md-end" required>Annual
                                    Income</label>

                                <div class="col-md-6">
                                    <input type="text" id="amount" name="preferred_income" readonly
                                           style="border:0; color:#f6931f; font-weight:bold;">

                                    <div id="slider-range"></div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="preferred_occupation"
                                       class="col-md-4 col-form-label text-md-end">Occupation</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="preferred_occupation[]" id="preferred_occupation"
                                            multiple required>
                                        <option value="1">Private job</option>
                                        <option value="2">Government Job</option>
                                        <option value="3">Business</option>
                                    </select>

                                    @error('preferred_occupation')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="preferred_family_type" class="col-md-4 col-form-label text-md-end">family
                                    type</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="preferred_family_type[]"
                                            id="preferred_family_type" multiple required>
                                        <option value="1">Joint family</option>
                                        <option value="2">Nuclear family</option>
                                    </select>

                                    @error('preferred_family_type')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="preferred_manglik"
                                       class="col-md-4 col-form-label text-md-end">Manglik</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="preferred_manglik" id="preferred_manglik"
                                            required>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>


                                    @error('preferred_manglik')
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Register') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')
    <script>
        $(function () {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 500,
                values: [50, 100],
                slide: function (event, ui) {
                    $("#amount").val(ui.values[0] + " - " + ui.values[1]);
                }
            });
            $("#amount").val($("#slider-range").slider("values", 0) +
                " - " + $("#slider-range").slider("values", 1));
        });
    </script>
@endsection
