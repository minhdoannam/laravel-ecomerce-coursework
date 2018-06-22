<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ImageController extends Controller
{
    //
    public static function getImage($skuCode) {
    	$result = DB::table('images')->where('skuCode',$skuCode)->first()->url;
    	return $result;
    }

    public function changeImage (Request $request) {
    	$skuCode = $_GET['skuCode'];
    	if ($request->ajax()) {
    		$result = DB::table('images')->where('skuCode',$skuCode)->first();
    	}
    	 $return_array = compact('result');
        return json_encode($return_array);
    }
}
