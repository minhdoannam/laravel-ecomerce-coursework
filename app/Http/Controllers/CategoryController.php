<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categories;

class CategoryController extends Controller
{
    //
	public static function getAllCategories() {
		return Categories::all();
	}
}
