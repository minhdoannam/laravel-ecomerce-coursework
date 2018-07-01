<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Sku;
use App\Product;
use App\Pricelist;

class CartController extends Controller
{
    //
    public function add() {
		$skuBuy = $_GET['skuBuy'];
		$productID = $_GET['productID'];
		$quantity = $_GET['quantity'];

		$productFind = Product::find($productID);
		$productName = $productFind->productName;

		$price = \App\Http\Controllers\PricelistController::getPriceByProductID($productFind->id);

		Cart::add($skuBuy,$productName, $quantity, $price);
		return view('includes/nav');
	}

	public function remove() {
		$rowID = $_GET['rowID'];
		Cart::remove($rowID);
		return view('includes/nav');
	}

	public function destroy() {
		Cart::destroy();
		return view('includes/nav');
	}

	public function update(){ 
		$rowID = $_GET['rowID'];
		$quantity = $_GET['quantity'];

		Cart::update($rowID,$quantity);
		return view('includes/nav');
	}

	public function checkout() {
		return view('pages/checkout');
	}
}
