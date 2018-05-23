<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ToDo;

class ToDoController extends Controller
{
    public function getToDo(){

        $todo = ToDo::all();

        return $todo;
    }

    public function addToDo(Request $request){

        $todo = new ToDo();
        $todo->content = $request->todo;
        $todo->archive = false; //no archive
        $todo->save();

        return $request->todo;
    }

    public function removeToDo(Request $request){
        
        ToDo::where('id',$request->id)->delete();

        return "Usunięto record";
    }

    public function archiveToDo(Request $request){

        ToDo::where('id',$request->id)->update(['archive'=>$request->archive]);

        return "Archive";
    }

    public function editToDo(Request $request){

        ToDo::where('id',$request->id)->update(['content'=>$request->edit]);

        return "Archive";
    }


}
