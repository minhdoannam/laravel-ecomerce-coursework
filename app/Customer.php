<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    //
    protected $table = 'customers';
	public $timestamp = true;

	protected $hidden = [
        'password', 'rememberToken',
    ];

    protected $fillable = [
        'firstName', 'lastName','dateRegister', 'email', 'password', 'phone', 'address', 'address2', 'city', 'country']
        
}
