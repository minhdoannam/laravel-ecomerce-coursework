<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VariantController extends Controller
{
    //
    public static function getVariantOption($skuCode) {
    	$result = DB::table("variants")
    			->where('skuCode', $skuCode)
    			->select('optionID')
    			->groupBy('optionID')
    			->orderBy('optionID')
    			->get();
    	return $result;
    }

    public static function getVariantColor($skuCode) {
        $query = DB::table("variants")
                ->where('skuCode', $skuCode)
                ->where('optionID',1)
                ->select('valueID')
                ->get();
        
        $result = $query->first()->valueID;
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
    public static function getVariantCollection($skuCode) {
        $result = DB::table("variants")
                ->where('skuCode', $skuCode)
                ->get();

        return $result;
    } 
    public function getValuesBySku(Request $request) {
        $skuCode = $_GET['skuCode'];
        $result = DB::table("variants")
                ->distinct()
                ->where('skuCode', $skuCode)
                ->select('variants.valueID')
                ->get();
        $return_array = compact('result');
        return json_encode($return_array);
    }

    public function getSkuByValues(Request $request) {
        $values = $_GET['values'];
        if($request->ajax())
        {
            $stringCondition = "(";
            for ($i = 0; $i < sizeof($values); $i++) {
                $temp = "";
                if ($i != 0) 
                {
                     $temp = " or (optionID = ".$values[$i][0]." and "."valueID = ".$values[$i][1].")";
                } 
                 else 
                {
                    $temp = "(optionID = ".$values[$i][0]." and "."valueID = ".$values[$i][1].")";
                }
                $stringCondition = $stringCondition.$temp;
            }
            $stringCondition = $stringCondition. ")";


             $result = DB::table('variants')
                    ->join('skus', 'skus.skuCode', '=','variants.skuCode')
                    ->where('skus.productID', $_GET['productID'])
                    ->whereRaw($stringCondition)
                    ->select('variants.skuCode', DB::raw('count(*) as indexSku'))
                    ->groupBy('variants.skuCode')
                    ->orderBy('indexSku', 'desc')
                    ->get()->first();

            $return_array = compact('result');
            return json_encode($return_array);
        }
    }
}
