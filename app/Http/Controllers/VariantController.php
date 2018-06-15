<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VariantController extends Controller
{
    //
    public  static function getVariantOption($skuCode) {
    	$result = DB::table("variants")
    			->where('skuCode', $skuCode)
    			->select('optionID')
    			->groupBy('optionID')
    			->orderBy('optionID')
    			->get();
    	return $result;
    }

    public static function getVariantValue($productID, $optionID) {
        $result = DB::table("variants")
                ->join('skus','skus.skuCode','=','variants.skuCode')
                ->distinct()
                ->where('optionID', $optionID)
                ->where('productID', $productID)
                ->select('variants.valueID')
                ->get();
        return $result;
    }
}
