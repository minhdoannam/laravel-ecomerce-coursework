<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SkuController extends Controller
{
    //
    public function getDefaultSku ($productID) {
    	$product = Product::find($productID);
    	$defaultImage = $product->defaultImage;
    	$defaultSkuCode = (DB::table('images')->where('url', $defaultImage)->get())->skuCode;
		$result = Sku::find($defaultSkuCode);
		return $result;
    }
}
