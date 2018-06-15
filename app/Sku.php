<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sku extends Model
{
    //
    protected $table = 'skus';
    public $timestamp = false;
 	public function option(){
        return $this->belongsToMany('App\Option', 'Variant', 'skuCode', 'optionID' );
    }   
}
