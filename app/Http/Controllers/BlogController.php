<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('backend_views.blog');
    }
    public function add()
    {
        return view('backend_views.add_blog');
    }
}
