<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Post;
use App\Tag;
use App\PostTag;
use Image;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('backend_views.blog', ['posts'=> Post::where('section_id', null)->get()]);
    }
    public function add()
    {
        return view('backend_views.add_blog');
    }
    public function addPost(Request $request)
    {
        echo $post_id = Post::insertGetId(
            [
                'post_name'=> $request->post_name,
                'head'=> $request->head,
                'tail'=> $request->tail,
            ]
        );

        if ($request->hasFile('head_img')) {
            $head_img = $request->file('head_img');
            $img = $post_id . '_head.' . $head_img->getClientOriginalExtension();

            Image::make($head_img)->resize(1600, 1066)->save('uploads/blog_images/' . $img);

            Post::findOrFail($post_id)->update([
                'head_img' => $img,
            ]);
        }

        if ($request->hasFile('tail_img')) {
            $tail_img = $request->file('tail_img');
            $img = $post_id . '_tail.' . $tail_img->getClientOriginalExtension();

            Image::make($tail_img)->resize(1600, 1066)->save('uploads/blog_images/' . $img);

            Post::findOrFail($post_id)->update([
                'tail_img' => $img,
            ]);
        }

        return back();
    }

    public function addPostSection(Request $request)
    {
        return view('backend_views.add_blog_section', ['post'=> Post::findOrFail($request->id) , 'sections'=> Post::findOrFail($request->id)->sections]) ;
    }
    public function addPostSectionPost(Request $request)
    {
        $post_id = Post::insertGetId(
            [
                'post_name'=> $request->post_name,
                'head'=> $request->head,
                'tail'=> $request->tail,
                'section_id' => $request->post_id
            ]
        );


        if ($request->hasFile('head_img')) {
            $head_img = $request->file('head_img');
            $img = $post_id . '_head.' . $head_img->getClientOriginalExtension();

            Image::make($head_img)->resize(1600, 1066)->save('uploads/blog_images/' . $img);

            Post::findOrFail($post_id)->update([
                'head_img' => $img,
            ]);
        }

        if ($request->hasFile('tail_img')) {
            $tail_img = $request->file('tail_img');
            $img = $post_id . '_tail.' . $tail_img->getClientOriginalExtension();

            Image::make($tail_img)->resize(1600, 1066)->save('uploads/blog_images/' . $img);

            Post::findOrFail($post_id)->update([
                'tail_img' => $img,
            ]);
        }
        return view('backend_views.add_blog_section', ['post'=> Post::findOrFail($request->post_id) , 'sections'=> Post::findOrFail($request->post_id)->sections]) ;
    }
}
