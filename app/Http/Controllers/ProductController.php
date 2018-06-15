<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ProductController extends Controller
{
    //
	public static function getProductByID ($productID) {
		$result = Product::find($productID);
		return $result;
	}
	
	public static function getProdcutByCategory($categoryID) {
		$result = DB::table('product')
				->where('categoryID', $categoryID)
				->get();
		return $result;
	}
	
	public function getDefaultProductDetail ($productID) {
		$product = Product::find($productID);
    	$defaultImage = $product->defaultImage;
    	$defaultSkuCode = (DB::table('images')->where('url', $defaultImage)->get())->skuCode;
		$result = DB::table('products')
				->join('skus', 'products.id', '=', 'skus.productID')
				->select('products.id', 'productName', 'productDescript', 'skuCode', 'inStock')
				->where('skuCode','=',$defaultSkuCode)
				->first();
		return $result;
	}
}
