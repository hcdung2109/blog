@extends('shop.layouts.main')

@section('content')
    <style>

    </style>
    <br>
    @foreach($articles as $article)
        <div class="well">
    <div class="media">
        <a class="pull-left" href="{{ route('shop.detailArticle', ['slug' => $article->slug]) }}">
            <img width="150" class="media-object" src="{{ asset($article->image) }}">
        </a>
        <div class="media-body">
            <h4 class="media-heading"><a href="{{ route('shop.detailArticle', ['slug' => $article->slug]) }}">{{ $article->title }}</a></h4>
            {!! $article->summary !!}
            <ul class="list-inline list-unstyled">
                <li><span><i class="glyphicon glyphicon-calendar"></i>{{ $article->updated_at }}</span></li>
                <li>|</li>
                <span><i class="glyphicon glyphicon-comment"></i> 2 comments</span>
                <li>|</li>
                <li>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </li>
                <li>|</li>
                <li>
                    <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
                    <span><i class="fa fa-facebook-square"></i></span>
                    <span><i class="fa fa-twitter-square"></i></span>
                    <span><i class="fa fa-google-plus-square"></i></span>
                </li>
            </ul>
        </div>
    </div>
</div>
    @endforeach
@endsection
