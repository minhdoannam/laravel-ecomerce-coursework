<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    //
    protected $table = 'products';
    public $timestamp = false;
	
	public function category() {
		return $this->belongTo('App\Category');
	}
}
