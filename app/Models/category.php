<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
	protected $table = 'category';
	protected $fillable = [
		'categoryID',
		'categoryName',
		'baseCost'
	];
	public static function getByID ($id) {
		return category::where("categoryID", $id);
	}
	public static function categories() {
		return category::all();
	}
}
