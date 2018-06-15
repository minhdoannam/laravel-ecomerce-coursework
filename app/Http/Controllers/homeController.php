<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
	public function __construct() {
		
		$theloai = DB::table('categories')->take(2)->get();
		view()->share('theloai', $theloai);
		
		$idSanphamMoi = DB::table('products')->select('id')->orderBy('id', 'desc')->take(4)->get();
		view()->share('idSanphamMoi', $idSanphamMoi);
	}

	public static function showProductByCategory($categoryID) {
		$result = DB::table('products')
				->where('categoryID', $categoryID)
				->take(4)
				->get();
		return $result;
	}
	public function productDefaultDetail($productID) {
		$product = Product::find($productID);
    	$defaultImage = $product->defaultImage;
    	$defaultSkuCode = (DB::table('images')->where('url', $defaultImage)->first())->skuCode;
		$detail = DB::table('products')
				->join('skus', 'products.id', '=', 'skus.productID')
				->select('products.id', 'productName','productDescript', 'skuCode', 'inStock')
				->where('skuCode','=',$defaultSkuCode)
				->first();
		return view('pages/detail',compact('detail'));
	}
	public function index() {
		return view('pages/home');
	}
}
