<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Option extends Model
{
    //
    protected $table = 'options';
    public $timestamp = false;

	public function option_value() {
		return $this->hasMany('App\Option_value');
	}
}
