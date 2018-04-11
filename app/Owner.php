<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Owner extends Model
{
    protected $fillable = ['google_id', 'name_owner', 'address', 'site', 'number','schedule', 'description', 'photo', 'rating', 'reviews', 'lat', 'long', 'user_id'];


}
