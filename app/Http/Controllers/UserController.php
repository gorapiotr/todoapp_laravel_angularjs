<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function getUsers()
    {
        $users = User::all();

        return $users;
    }

    public function getUserById(Request $request)
    {
        $user = User::find($request->id);
        
        return $user;
    }

}
