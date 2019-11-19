<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable =[
        'post_name',
        'head',
        'tail',
        'head_img',
        'tail_img'
    ];
    public function tags()
    {
        return $this->belongsToMany('App\Tag')->using('App\PostTag');
    }
}
