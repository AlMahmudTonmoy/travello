@extends('layouts.app_frontend')

@section('content')


<div class="hero-wrap js-fullheight" style="background-image: url( {!! asset('frontend_assets/images/bg_4.jpg') !!});">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="{!! route('index') !!}">Home</a></span> <span class="mr-2"><a href="blog.html">Blog</a></span> <span>Blog Single</span>
                </p>
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips &amp; Articles</h1>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-8 ftco-animate">


                <div class="d-flex">
                    <div class="text-danger"> {!! \Carbon\Carbon::parse($post->created_at)->format('M d , Y ') !!} </div>
                    <div><a href="#">&nbsp;Admin&nbsp; </a></div>
                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <br>
                {!! $post->head !!}
                @if ($post->head_img)
                <p>
                    <img src="{!! asset('uploads/blog_images') !!}/{{ $post->head_img }}" alt="" class="img-fluid">
                </p>
                @endif


                {!! $post->tail !!}
                @if ($post->tail_img)
                <p>
                    <img src="{!! asset('uploads/blog_images') !!}/{{ $post->tail_img }}" alt="" class="img-fluid">
                </p>
                @endif


                @foreach ($post->sections as $section)

                {!! $section->head !!}

                @if ($section->head_img)
                <p>
                    <img src="{!! asset('uploads/blog_images') !!}/{{ $section->head_img }}" alt="" class="img-fluid">
                </p>
                @endif
                {!! $section->tail !!}

                @if ($section->tail_img)
                <p>
                    <img src="{!! asset('uploads/blog_images') !!}/{{ $section->tail_img }}" alt="" class="img-fluid">
                </p>
                @endif


                @endforeach



                <div class="tag-widget post-tag-container mb-5 mt-5">
                    <div class="tagcloud">
                        @foreach ($post->tags as $tag)
                        <a href="#" class="tag-cloud-link">{{ $tag->tag }}</a>

                        @endforeach

                    </div>
                </div>

                <div class="about-author d-flex p-5 bg-light">
                    <div class="bio align-self-md-center mr-5">
                        <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder" class="img-fluid mb-4">
                    </div>
                    <div class="desc align-self-md-center">
                        <h3>Lance Smith</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate
                            numquam!</p>
                    </div>
                </div>


                <div class="pt-5 mt-5">
                    <h3 class="mb-5">6 Comments</h3>
                    <ul class="comment-list">
                        <li class="comment">
                            <div class="vcard bio">
                                <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>John Doe</h3>
                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit
                                    necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                            </div>
                        </li>

                        <li class="comment">
                            <div class="vcard bio">
                                <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>John Doe</h3>
                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit
                                    necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                            </div>

                            <ul class="children">
                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit
                                            necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Reply</a></p>
                                    </div>


                                    <ul class="children">
                                        <li class="comment">
                                            <div class="vcard bio">
                                                <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder">
                                            </div>
                                            <div class="comment-body">
                                                <h3>John Doe</h3>
                                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum
                                                    impedit necessitatibus, nihil?</p>
                                                <p><a href="#" class="reply">Reply</a></p>
                                            </div>

                                            <ul class="children">
                                                <li class="comment">
                                                    <div class="vcard bio">
                                                        <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder">
                                                    </div>
                                                    <div class="comment-body">
                                                        <h3>John Doe</h3>
                                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas
                                                            earum impedit necessitatibus, nihil?</p>
                                                        <p><a href="#" class="reply">Reply</a></p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <li class="comment">
                            <div class="vcard bio">
                                <img src="{!! asset('frontend_assets/images/person_1.jpg') !!}" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>John Doe</h3>
                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit
                                    necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                            </div>
                        </li>
                    </ul>
                    <!-- END comment-list -->

                    <div class="comment-form-wrap pt-5">
                        <h3 class="mb-5">Leave a comment</h3>
                        <form action="#" class="p-5 bg-light">
                            <div class="form-group">
                                <label for="name">Name *</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email *</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="website">Website</label>
                                <input type="url" class="form-control" id="website">
                            </div>

                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                            </div>

                        </form>
                    </div>
                </div>

            </div> <!-- .col-md-8 -->
            <div class="col-md-4 sidebar ftco-animate">
                <div class="sidebar-box">
                    <form action="#" class="search-form">
                        <div class="form-group">
                            <span class="icon fa fa-search"></span>
                            <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                        </div>
                    </form>
                </div>
                <div class="sidebar-box ftco-animate">
                    <div class="categories">
                        <h3>Categories</h3>
                        <li><a href="#">Tour <span>(12)</span></a></li>
                        <li><a href="#">Hotel <span>(22)</span></a></li>
                        <li><a href="#">Coffee <span>(37)</span></a></li>
                        <li><a href="#">Drinks <span>(42)</span></a></li>
                        <li><a href="#">Foods <span>(14)</span></a></li>
                        <li><a href="#">Travel <span>(140)</span></a></li>
                    </div>
                </div>

                <div class="sidebar-box ftco-animate">
                    <h3>Recent Blog</h3>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url( {!! asset('frontend_assets/images/image_1.jpg') !!});"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url( {!! asset('frontend_assets/images/image_2.jpg') !!});"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url( {!! asset('frontend_assets/images/image_3.jpg') !!});"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sidebar-box ftco-animate">
                    <h3>Tag Cloud</h3>
                    <div class="tagcloud">
                        @php
                        $counter = 0;
                        @endphp
                        @foreach ( App\Tag::all() as $value)

                        <a href="#" class="tag-cloud-link">{{ $value->tag }}</a>
                        @break($counter++ > 12);

                        @endforeach

                    </div>
                </div>

                <div class="sidebar-box ftco-animate">
                    <h3>Paragraph</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate
                        numquam!</p>
                </div>
            </div>

        </div>
    </div>
</section> <!-- .section -->



@endsection