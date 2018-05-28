<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use DB;


class homeController extends Controller
{
	public function __construct() {
		$theloai = Category::all();
		view()->share('theloai', $theloai);

		$sanpham = Product::all();
		view()->share('sanpham',$sanpham);
	}
	public function index() {
		return view('pages/home');
	}
}
