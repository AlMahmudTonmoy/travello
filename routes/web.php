<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// FRONT END PART ROUTING .....

Route::get('/', 'FrontendController@index')->name('index');
Route::get('/about', 'FrontendController@about')->name('about');
Route::get('/tour', 'FrontendController@tour')->name('tour');
Route::get('/hotel', 'FrontendController@hotel')->name('hotel');
Route::get('/blog', 'FrontendController@blog')->name('blog');
Route::get('/contact', 'FrontendController@contact')->name('contact');
Route::get('/blog-single', 'FrontendController@blogDetail')->name('blogDetail');
Route::get('/hotel-single', 'FrontendController@hotelDetail')->name('hotelDetail');


Auth::routes();

//DASHBOARD PART ROUTING

Route::get('/home', 'HomeController@index')->name('home');

//blog controller
Route::get('/home/blog', 'BlogController@index')->name('blog_backend');
Route::get('/home/blog/add', 'BlogController@add')->name('add_blog');
Route::post('/home/blog/add/post', 'BlogController@addPost')->name('add_post');
Route::post('/home/blog/add/post/section', 'BlogController@addPostSection')->name('add_section');
Route::post('/home/blog/add/post/section/post', 'BlogController@addPostSectionPost')->name('add_section_post');
