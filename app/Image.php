<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    //
    protected $table = 'images';
    public $timestamp = false;
    
    public function skus(){
    	return $this->belongsTo('App\Skus', 'skuCode', 'skuCode');
    }
	
}
