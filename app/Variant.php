<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Variant extends Model
{
    //
    protected $table = 'variants';
    public $timestamp = false;
     public function option_value(){
    	return $this->belongsTo('App\Option_value','valueID', 'id');
    }
}
