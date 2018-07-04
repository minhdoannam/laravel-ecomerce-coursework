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
        'email', 'password','firstName', 'lastName', 'isAdmin', 'verified', 'isActive'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [   
        'password', 'rememberToken', 
    ];

     public function city(){
        return $this->belongsTo('App\City', 'cityID', 'id');
    }

    public function saler_order(){
        return $this ->hasMany('App\Sale_order','customer','id' );
    }

    public function isAdmin() {
        return $this->isAdmin; // this looks for an admin column in your users table
    }
}

