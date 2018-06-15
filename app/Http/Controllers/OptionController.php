<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OptionController extends Controller
{
    //
    public static function getOption($id) {
    	$result = DB::table('options')->where('id', $id)->first()->optionName;
    	return $result;
    }
}
