<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'email', 'password','firstName', 'lastName'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'rememberToken', 'isAdmin'
    ];

     public function city(){
        return $this->belongsTo('App\City', 'cityID', 'id');
    }

    public function saler_order(){
        return $this ->hasMany('App\Sale_order','customer','id' );
    }
}

