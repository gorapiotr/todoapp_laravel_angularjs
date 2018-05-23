<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Comment;

class CommentController extends Controller
{
    public function getUserComments(Request $request){
        
        return User::find($request->id)->comments;
    }

    public function updateComment(Request $request){
        Comment::where('id',$request->id)->update(['content'=>$request->edit]);
        return "Updated";
    }

    public function addComment(Request $request){
        
        $comment = new Comment();
        $comment->content = $request->content;
        $comment->user_id = $request->id;
        $comment->created_at = NOW();
        $comment->updated_at = NOW();
        $comment->save();

        return "Add new Comment";
    }

    public function removeComment(Request $request){

        Comment::where('id', $request->id)->delete();

        return "Deleted comment";
    }

}
