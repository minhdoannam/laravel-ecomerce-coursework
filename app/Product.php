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
		return $this->belongsTo('App\Category', 'categoryID', 'id');
	}
	public function pricelist(){
		return $this->hasMany('App\Pricelist','productID','id');
	}
	public function sku(){
		return $this->hasMany('App\Skus', 'productID', 'id');
	}
}
