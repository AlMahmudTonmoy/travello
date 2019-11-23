<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Post;
use App\Tag;
use Image;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /////Utilites custom function
    //// unlink blog image helper
    protected function unlinkBlogImages($post)
    {
        if ($post->head_img) {
            unlink('uploads/blog_images/'.$post->head_img);
        }
        if ($post->tail_img) {
            unlink('uploads/blog_images/'.$post->tail_img);
        }
    }
    /////adding image
    protected function addBlogImage($request, $img_type, $post, $suffix)
    {
        $img = $request->file($img_type);
        $img_name = $post->id . '_'.$suffix.'.' . $img->getClientOriginalExtension();

        Image::make($img)->resize(1600, 1066)->save('uploads/blog_images/' . $img_name);

        $post->update([
                $img_type => $img_name,
            ]);
    }
    ///
    ///////
    public function index()
    {
        return view('backend_views.blog', ['posts'=> Post::where('section_id', null)->get()]);
    }
    public function add()
    {
        return view('backend_views.add_blog', ['tags' => Tag::all()]);
    }
    public function addPost(Request $request)
    {
        $request->validate([
            'post_name' => 'required',
        ]);
        $post_id = Post::insertGetId(
            [
                'post_name'=> $request->post_name,
                'head'=> $request->head,
                'tail'=> $request->tail,
                'created_at' => Carbon::now()

            ]
        );
        $post = Post::findOrFail($post_id);

        $post->tags()->attach($request->tags);

        if ($request->hasFile('head_img')) {
            $this->addBlogImage($request, 'head_img', $post, 'head');
        }

        if ($request->hasFile('tail_img')) {
            $this->addBlogImage($request, 'tail_img', $post, 'tail');
        }

        return redirect()->route('blog_backend');
    }

    public function blogDetail($id)
    {
        $post = Post::findOrFail($id);
        $tag_object=  $post->tags;
        $tag_array = [];
        foreach ($tag_object as $tag) {
            array_push($tag_array, $tag->tag);
        }
        return view('backend_views.blog_detail', ['post'=> $post ,'tag_array'=> $tag_array ]) ;
    }
    public function addPostSectionPost(Request $request)
    {
        if ($request->head || $request->tail || $request->hasFile('head_img') || $request->hasFile('tail_img')) {
            $post_id = Post::insertGetId(
                [
                    'post_name'=> $request->post_name,
                    'head'=> $request->head,
                    'tail'=> $request->tail,
                    'section_id' => $request->post_id,
                    'created_at' => Carbon::now()
                ]
            );
            $post = Post::findOrFail($post_id);


            if ($request->hasFile('head_img')) {
                $this->addBlogImage($request, 'head_img', $post, 'head');
            }

            if ($request->hasFile('tail_img')) {
                $this->addBlogImage($request, 'tail_img', $post, 'tail');
            }
        }

        return redirect()->route('blog_detail', $request->post_id);
    }
    public function edit(Request $request)
    {
        $post = Post::findOrFail($request->id);

        $tag_object=  $post->tags;
        $tag_array = [];
        foreach ($tag_object as $tag) {
            array_push($tag_array, $tag->id);
        }
        return view('backend_views.edit_post', ['post' =>$post ,'tags' => Tag::all() ,'tag_array'=> $tag_array ]);
    }
    public function delete(Request $request)
    {
        Post::findOrFail($request->id)->delete();
        return back();
    }
    public function editPost(Request $request)
    {
        $request->validate([
            'post_name' => 'required',
        ]);
        $post =Post::findOrFail($request->id);
        $post->update(
            [
                'post_name'=> $request->post_name,
                'head'=> $request->head,
                'tail'=> $request->tail,
            ]
        );
        $post->tags()->sync($request->tags);
        if ($request->hasFile('head_img')) {
            if ($request->old_head_img) {
                unlink('uploads/blog_images/'.$request->old_head_img);
            }

            $this->addBlogImage($request, 'head_img', $post, 'head');
        }

        if ($request->hasFile('tail_img')) {
            if ($request->old_tail_img) {
                unlink('uploads/blog_images/'.$request->old_tail_img);
            }
            $this->addBlogImage($request, 'tail_img', $post, 'tail');
        }
        return redirect()->route('blog_detail', $request->id);
    }
    public function editSection(Request $request)
    {
        $post = Post::findOrFail($request->id);
        $tag_object=  Post::findOrFail($post->section_id)->tags;
        $tag_array = [];
        foreach ($tag_object as $tag) {
            array_push($tag_array, $tag->tag);
        }
        return view('backend_views.edit_section', ['post' =>$post ,'tag_array'=>$tag_array]);
    }
    public function editSectionPost(Request $request)
    {
        if ($request->head || $request->tail || $request->hasFile('head_img') || $request->hasFile('tail_img')) {
            $post = Post::findOrFail($request->id);
            $post->update(
                [
                    'head'=> $request->head,
                    'tail'=> $request->tail,
                ]
            );

            if ($request->hasFile('head_img')) {
                if ($request->old_head_img) {
                    unlink('uploads/blog_images/'.$request->old_head_img);
                }
                $this->addBlogImage($request, 'head_img', $post, 'head');
            }

            if ($request->hasFile('tail_img')) {
                if ($request->old_tail_img) {
                    unlink('uploads/blog_images/'.$request->old_tail_img);
                }
                $this->addBlogImage($request, 'tail_img', $post, 'tail');
            }
        }
        return redirect()->route('blog_detail', $request->post_id);
    }
    public function deleteSection(Request $request)
    {
        $section = Post::findOrFail($request->section_id);
        $this->unlinkBlogImages($section);
        $section->delete();
        $section->forceDelete();
        return redirect()->route('blog_detail', $request->post_id);
    }

    public function trashed()
    {
        return view('backend_views.trashed_blog', ['posts'=>Post::onlyTrashed()->where('section_id', null)->get()]);
    }
    public function restore(Request $request)
    {
        Post::onlyTrashed()->findOrFail($request->id)->restore();
        return back();
    }

    public function force(Request $request)
    {
        $post = Post::onlyTrashed()->findOrFail($request->id);
        $this->unlinkBlogImages($post);
        foreach ($post->sections as $section) {
            $this->unlinkBlogImages($section);
            $section->delete();
            $section->forceDelete();
        }
        $post->forceDelete();
        return back();
    }
}
