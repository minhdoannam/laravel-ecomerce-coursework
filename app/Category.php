<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Category extends Model
{
    //
    protected $table = 'categories';
    public $timestamp = false;

    public function product() {
    	return $this->hasMany('App\Product');
    }
}
