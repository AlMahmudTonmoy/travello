<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {
        return view('frontend_views.index', ['index_active'=>'active']);
    }
    public function about()
    {
        return view('frontend_views.about', ['about_active'=>'active']);
    }
    public function tour()
    {
        return view('frontend_views.tour', ['tour_active'=>'active']);
    }
    public function hotel()
    {
        return view('frontend_views.hotel', ['hotel_active'=>'active']);
    }
    public function blog()
    {
        return view('frontend_views.blog', ['blog_active'=>'active']);
    }
    public function contact()
    {
        return view('frontend_views.contact', ['contact_active'=>'active']);
    }
    public function blogDetail()
    {
        return view('frontend_views.blog_detail', ['blog_active'=>'active']);
    }
    public function hotelDetail()
    {
        return view('frontend_views.hotel_detail', ['hotel_active'=>'active']);
    }
}
