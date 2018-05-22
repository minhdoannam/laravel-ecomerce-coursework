<?php

namespace App\Http\Controllers;

use App\size;
use Illuminate\Http\Request;
use App\Models\category;

class categoryController extends Controller {
	public function getAllCategories() {
		$categories = category::categories();
		return view('pages.home', compact('categories'));
	}
}