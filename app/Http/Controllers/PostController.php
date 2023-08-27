<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Spatie\Tags\Tag;

class PostController extends Controller
{
    public function index()
    {

        return view('dashboard', [
                'posts' => Post::where('status', 1)->
                latest()->simplePaginate(5),
            ]
        );
    }

    public function store(Request $request)
    {
        $request->validate([

        ]);

        return Post::create($request->validated());
    }

    public function show(Post $post)
    {
        //       get  previous record
        $previous = Post::where('id', '<', $post->id)->orderBy('id', 'desc')->first();

        return view('post.show', [
            'post' => $post,
            'previous' => $previous,
        ]);
    }

    public function update(Request $request, Post $post)
    {
        $request->validate([

        ]);

        $post->update($request->validated());

        return $post;
    }

    public function destroy(Post $post)
    {
        $post->delete();

        return response()->json();
    }

    public function tags()
    {
        $tags = Tag::all();

        return view('Post.tags', compact('tags'));
    }

    public function tag($tag)
    {
        $posts = Post::withAnyTags($tag)->simplePaginate(6);

        return view('Post.tag', compact('posts', 'tag'));
    }
}
