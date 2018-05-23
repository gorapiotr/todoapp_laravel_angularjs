<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\Comment as Authenticatable;


class Comment extends Model
{
    public function user(){
        return $this->belongsTo('App\User');
    }

}
