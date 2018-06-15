<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ValueController extends Controller
{
    //
    public static function getValueByID($id) {
    	$result = DB::table('option_values')->where('id', $id)->first();
    	return $result;
    }
    public static function getValueByOption($optionID) {
    	$result = DB::table('option_values')->where('optionID', $optionID);
    	return $result;
    }
}
