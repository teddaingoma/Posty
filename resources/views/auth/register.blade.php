@extends('layouts.app')

@section('content')
    <div class="d-flex justify-content-center flex-column">
        <div class="w-50 bg-light my-1 text-center mx-auto rounded">
            <h1 class="h3 my-auto fw-normal">Register</h1>
        </div>
        <form class="mx-auto w-25" action="{{ route('register') }}" method="post">
            @csrf
            <div class="form-floating">
                <input type="text" name="name" class="form-control @error('name')border border-danger @enderror" id="name" placeholder="Your Name" value="{{ old('name') }}">
                <label for="name">Provide your Name</label>

                @error('name')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                @enderror

            </div>
            <div class="form-floating">
                <input type="text" name="username" class="form-control @error('username')border border-danger @enderror" id="username" placeholder="Your Name" value="{{ old('username') }}">
                <label for="username">Choose Username</label>

                @error('username')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                @enderror
                
            </div>
            <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email')border border-danger @enderror" id="email" placeholder="name@example.com" value="{{ old('email') }}">
                <label for="email">Email address</label>

                @error('email')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                @enderror

            </div>
            <div class="form-floating">
                <input type="password" name="password" class="form-control @error('password')border border-danger @enderror" id="password" placeholder="Choose Password">
                <label for="password">Choose Password</label>

                @error('password')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                @enderror
                
            </div>
            <div class="form-floating">
                <input type="password" name="password_confirmation" class="form-control" id="password_confirmation" placeholder="Repeat your password">
                <label for="password_confirmation">Comfirm Password</label>
            </div>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        </form>
    </div>
@endsection