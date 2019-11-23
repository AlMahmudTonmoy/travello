@extends('layouts.app_frontend')

@section('content')

<div class="hero-wrap js-fullheight" style="background-image: url( {!! asset('frontend_assets/images/bg_4.jpg') !!});">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="{!! route('index') !!}">Home</a></span> <span>Blog</span></p>
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips &amp; Articles</h1>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section bg-light">
    <div class="container">
        <div class="row d-flex">

            @foreach ($posts as $post)
            <div class="col-md-3 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="{!! route('blogDetail' , $post->id ) !!}">

                        <div class="block-20" style="background-image: url( {!! asset('uploads/blog_images') !!}/{{ $post->head_img }});">
                        </div>

                        <div class="text p-4 d-block">
                            <span class="tag">Tips, Travel</span>
                            <h3 class="heading mt-3"><a href="{!! route('blogDetail' , $post->id) !!}">{{ strlen($post->post_name) > 35 ? substr($post->post_name,0,35)."..." : $post->post_name  }}</a></h3>
                            <div class="meta mb-3">

                                <div><a href="#">{{ \Carbon\Carbon::parse($post->created_at)->format('M d Y') }}</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                            </div>
                        </div>

                    </a>

                </div>
            </div>
            @endforeach


        </div>
        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>



@endsection