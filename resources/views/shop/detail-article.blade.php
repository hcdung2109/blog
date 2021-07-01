@extends('shop.layouts.main')

@section('content')
    <br>
    <h2>{{ $article->title }}</h2>
    <p><i class="glyphicon glyphicon-calendar"></i> {{ $article->updated_at }}</p>
    {!! $article->description !!}
@endsection
