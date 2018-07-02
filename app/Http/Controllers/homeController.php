<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Products;
use App\Variants;
use App\Images;
use App\Skus;
use App\Options;
use App\Option_values;

use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
	public function __construct() {
		
		$theloai = DB::table('categories')->take(2)->get();
		view()->share('theloai', $theloai);
		
		$idSanphamMoi = DB::table('products')->select('id')->where('active', 1)->orderBy('id', 'desc')->take(4)->get();
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
		$product = Products::find($productID);
		$skuList = Skus::where([['productID','=',$productID],['active','=',1]])->get();
		$variantList= Variants::all();
		$optionList = Options::where([['isActive','=',1]])->get();
		$valueList = Option_values::where([['isActive','=',1]])->get();

		$relatedProducts = DB::table('products')
		->where('active', 1)
		->where('id', '<>', $productID)
		->orderBy('id', 'desc')
		->take(4)
		->get();
		
		return view('pages/detail',['optionList'=>$optionList, 'valueList'=>$valueList,'product'=>$product, 'skuList'=>$skuList, 'variantList'=>$variantList, 'relatedProducts' => $relatedProducts]);
	}
	public function index() {
		return view('pages/home');
	}
}
