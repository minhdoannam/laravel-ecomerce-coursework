<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Option_value extends Model
{
    //
    protected $table = 'option_values';
    public $timestamp = false;
    public function option() {
    	return $this->belongTo('App\Option', 'optionID', 'id');
    }
}

