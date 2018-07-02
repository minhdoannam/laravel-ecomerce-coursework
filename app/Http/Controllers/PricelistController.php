<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Pricelist;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PricelistController extends Controller
{
    //
    public static function getPriceByProductID ($productID) {
    	$query = DB::table('pricelist')
    			->select('price')
				->where('productID', $productID)
				->where('enddate', null)
				->where('startdate', '<=', Carbon::now())
				->get();
		$result = $query->first()->price;
		return $result;
	}
}
