<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
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
}
