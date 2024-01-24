@props(['post' => $post])

<div class="m-2">
    <a href="{{ route('users.posts', $post->user) }}" class="text-decoration-none">{{ $post->user->name  }}</a> <span class="text-muted">{{ $post->created_at->diffForHumans() }}</span>
    <p class="mb-2">{{ $post->body }}</p>

    @can('delete', $post)
        <form action="{{ route('posts.destroy', $post) }}" method="POST">
            @csrf
            @method('DELETE')
            <button class="btn text-primary btn-outline-none p-0 mb-2" type="submit">delete</button>
        </form>
    @endcan

    <div class="d-flex justify-items-center">
        @auth
            @if (!$post->likedBy(auth()->user()))
                <form action="{{ route('posts.likes', $post) }}" method="POST">
                    @csrf
                    <button class="btn text-primary btn-outline-none p-0 mb-2 mx-1 position-relative" type="submit">
                        like
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-light text-primary">
                            {{ $post->likes->count() }}
                            <span class="visually-hidden">likes</span>
                        </span>
                    </button>
                </form>
            @else
                <form action="{{ route('posts.likes', $post) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="btn text-primary btn-outline-none p-0 mb-2" type="submit">unlike</button>
                </form>
            @endif


        @endauth

        <span class="mx-1 text-secondary position-relative">
            {{ Str::plural('like', $post->likes->count()) }}
            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-light text-primary">
                {{ $post->likes->count() }}
            </span>
        </span>

    </div>
</div>
