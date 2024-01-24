@component('mail::message')
# Your podt was liked

{{ $liker->name }} liked one of your post

@component('mail::button', ['url' => route('posts.show', $post)])
    view
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
