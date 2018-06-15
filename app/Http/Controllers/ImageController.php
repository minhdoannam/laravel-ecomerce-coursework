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
}
