@extends('layouts.app')

@section('content')
    <div class="d-flex justify-content-center flex-column">
        <div class="w-75 bg-light my-1 p-3 mx-auto rounded">
            @auth
                <form action="{{ route('posts') }}" method="POST">
                    @csrf
                    <div class="form-floating m-2">
                        <textarea type="text" name="body" cols="30" rows="4" class="form-control h-50 @error('body')border border-danger @enderror text-dark" id="name" placeholder="Post Something"></textarea>

                        @error('body')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                        @enderror

                    </div>
                    <div class="d-flex justify-content-start w-25 m-2">
                        <button class="btn btn-lg btn-primary" type="submit">post</button>
                    </div>
                </form>
            @endauth

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
