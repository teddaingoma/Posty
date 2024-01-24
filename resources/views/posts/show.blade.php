@extends('layouts.app')

@section('content')
    <div class="d-flex justify-content-center flex-column">
        <div class="w-75 bg-light my-1 p-3 mx-auto rounded">
            <x-post :post="$post" />
        </div>
    </div>
@endsection
