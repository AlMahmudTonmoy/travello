<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tag;

class TagController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('backend_views.tag', ['tags' => Tag::all()]);
    }
    public function add(Request $request)
    {
        $request->validate([
            'tag'=>'required'
        ]);
    
        if (Tag::where('tag', $request->tag)->first() ===null) {
            Tag::insert([
                'tag' => $request->tag,
            ]);
            return back();
        }
        return back()->with('tag_error', 'Entered Tag already Exist');
    }
    public function edit($id)
    {
        return view('backend_views.edit_tag', ['tag' => Tag::findOrFail($id)]);
    }
    public function editPost(Request $request)
    {
        $request->validate([
            'tag'=>'required'
        ]);
        Tag::findOrFail($request->id)->update([
            'tag' => $request->tag
        ]);

        return redirect()->route('tag_backend');
    }
    public function delete(Request $request)
    {
        $tag = Tag::findOrFail($request->id);

        foreach ($tag->posts as $post) {
            echo $post->pivot->delete();
        }
        $tag->delete();
        return back();
    }
}
