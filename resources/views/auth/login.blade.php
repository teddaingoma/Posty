@extends('layouts.app')

@section('content')
    <div class="text-center d-flex justify-content-center flex-column">
        <div class="w-50 bg-light my-1 text-center mx-auto rounded">
            <h1 class="h3 my-auto fw-normal">Login</h1>
        </div>

        @if (session('status'))
            <span class="w-25 text-danger bg-light mx-auto my-1 border border-danger rounded">
                {{ session('status') }}
            </span>
        @endif

        <form class="mx-auto w-25" action="{{ route('login') }}" method="post">
            @csrf
            
            <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email')border border-danger @enderror" id="email" placeholder="name@example.com" value="{{ old('email') }}">
                <label for="email">email address</label>

                @error('email')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                @enderror

            </div>
            <div class="form-floating">
                <input type="password" name="password" class="form-control @error('password')border border-danger @enderror" id="password" placeholder="Password">
                <label for="password">Password</label>

                @error('password')
                    <span class="text-danger">
                        {{ $message }}
                    </span>
                @enderror
                
            </div>
            
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember" name="remember" id="remember"> Remember me
                </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">login</button>
        </form>
    </div>
@endsection