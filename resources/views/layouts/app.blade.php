<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Posty</title>
        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">

        <style>
            body{
                background-color: gray;
            }
        </style>

    </head>
    <body>
        <div class="container-fluid px-0">
            <nav class="navbar navbar-expand-lg navbar-light bg-light" aria-label="Eleventh navbar example">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample09">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('posts') }}" tabindex="-1">Post</a>
                        </li>
                    </ul>

                    <ul class="navbar-nav d-flex justify-content-end">

                        @auth
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="#">{{ auth()->user()->name }}</a>
                            </li>
                            <li class="nav-item">
                                <form action="{{ route('logout') }}" method="post" class="nav-link d-inline">
                                    @csrf
                                    <button type="submit" class="btn border border-warning" tabindex="-1">Logout</button>
                                </form>
                            </li>
                        @endauth

                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href=" {{ route('register') }}" tabindex="-1">Register</a>
                            </li>
                        @endguest

                    </ul>
                </div>
            </div>
            </nav>
        </div>
        @yield('content')
    </body>
</html>