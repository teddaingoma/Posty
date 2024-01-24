@extends('layouts.app')

@section('content')
    <div class="d-flex justify-content-center flex-column">
        <div class="w-75 bg-light my-1 text-center mx-auto rounded">
            <h1 class="h3 mb-1 fw-normal">{{ $user->name }}</h1>
        </div>

        <div class="w-75 bg-light my-1 p-3 mx-auto rounded">

            @if($posts->count())
                @foreach($posts as $post)
                    <x-post :post="$post" />
                @endforeach

                {{ $posts->links() }}

            @else
                <p>There's nothing to post</p>
            @endif
        </div>

    </div>


@endsection
