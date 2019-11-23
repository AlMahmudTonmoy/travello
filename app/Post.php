<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use SoftDeletes;
    protected $fillable =[
        'post_name',
        'head',
        'tail',
        'head_img',
        'tail_img'
    ];
    public function tags()
    {
        return $this->belongsToMany('App\Tag', 'post_tags');
    }
    public function sections()
    {
        return $this->hasMany('App\Post', 'section_id', 'id');
    }
}
