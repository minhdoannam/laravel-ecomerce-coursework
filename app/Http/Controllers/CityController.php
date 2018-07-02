<?php

namespace App\Http\Controllers;
use App\City;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CityController extends Controller
{
    //
    public static function load() {
    	return City::all();
    }

    public static function getNameByID($id) {
    	return City::find($id)->first()->cityName;
    }
}
