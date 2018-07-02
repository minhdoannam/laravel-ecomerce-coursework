<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Categories;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ProductController extends Controller
{
    //
	public static function getProductByID ($productID) {
		$result = Products::find($productID);
		return $result;
	}
	
	public static function getProductByCategory($categoryID) {
		$result = DB::table('products')
				->where('categoryID', $categoryID)
				->where('active', 1)
				->get();
		return $result;
	}

	public function getProducPageCategory($categoryID) {
		$result = DB::table('products')
				->where('categoryID', $categoryID)
				->where('active', 1)
				->get();
		$category = Categories::find($categoryID);
		return view('pages.category', ['productList' => $result, 'category' => $category]);
	}
}
