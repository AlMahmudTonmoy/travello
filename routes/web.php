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
Route::get('/blog/deatal/{id}', 'FrontendController@blogDetail')->name('blogDetail');
Route::get('/hotel-single', 'FrontendController@hotelDetail')->name('hotelDetail');


Auth::routes();

//DASHBOARD PART ROUTING

Route::get('/home', 'HomeController@index')->name('home');

//blog controller
Route::get('/home/blog', 'BlogController@index')->name('blog_backend');
Route::get('/home/blog/add', 'BlogController@add')->name('add_blog');
Route::post('/home/blog/add/post', 'BlogController@addPost')->name('add_post');
Route::get('/home/blog/post/detail/{id}', 'BlogController@blogDetail')->name('blog_detail');
Route::post('/home/blog/post/detail/section/add/post', 'BlogController@addPostSectionPost')->name('add_section_post');
Route::post('/home/blog/post/edit', 'BlogController@edit')->name('edit_post');
Route::post('/home/blog/post/edit/post', 'BlogController@editPost')->name('edit_post_post');
Route::post('/home/blog/post/section/edit', 'BlogController@editSection')->name('edit_section');
Route::post('/home/blog/post/section/edit/post', 'BlogController@editSectionPost')->name('edit_section_post');
Route::post('/home/blog/post/section/delete', 'BlogController@deleteSection')->name('delete_section');
Route::post('/home/blog/delete', 'BlogController@delete')->name('delete_blog');
Route::get('/home/blog/trashed', 'BlogController@trashed')->name('trashed_blog');
Route::post('/home/blog/trashed/restore', 'BlogController@restore')->name('restore_blog');
Route::post('/home/blog/trashed', 'BlogController@force')->name('force_blog');

//Tag controller
Route::get('/home/blog/tag', 'TagController@index')->name('tag_backend');
Route::post('/home/blog/tag/add', 'TagController@add')->name('add_tag');
Route::get('/home/blog/tag/edit/{id}', 'TagController@edit')->name('edit_tag');
Route::post('/home/blog/tag/edit/post', 'TagController@editPost')->name('edit_tag_post');
Route::post('/home/blog/tag/delete', 'TagController@delete')->name('delete_tag');
