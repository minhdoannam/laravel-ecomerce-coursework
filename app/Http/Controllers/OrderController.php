<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Sale_order;
use Carbon\Carbon;

class OrderController extends Controller
{
    //
    public function checkout(Request $req) {
		
		//Kiểm tra xem ngưởi dùng có trong email chưa? Nếu chưa có thì thêm vào...
		$email = $req->email;
		$queryCustomer = DB::table('users')->where('email', $email);
		$cus;
		if (empty($queryCustomer)) {
			DB::table('users')->insert([
				'firstName'=> $req->firstName,
				'lastName' => $req->lastName,
				'verified' => 0,
				'phone' => $req->phone,
				'address' => $req->address,
				'address2' => $req->address2,
				'city' => $req->state,
				'country' => $req->country,
				'isAdmin' => 0,
				'isActive' => 0
			]);
			$cus = DB::table('users')->where('email', $email)->select('id')->get();

		}
		else {
			$cus = DB::table('users')->where('email', $email)->select('id')->get();
		}
		//Lấy id để thêm vào...
		//Thêm vào sale_order
		DB::table('users')->insert(
    		['paymentType' => $req->paymenMethod,
    			'customer' => $cus->first()->id,
    			'orderedDate' => Carbon::now(),
    			'orderPhone' => $req->phone,
    			'orderAddress1' => $req->address,
    			'orderAddress2' => $req->address2,
    			'orderCity' => $req->state,
    			'orderCountry' => $req->country,
    			'stt' => 1
    		]
		);
		
    	return view('pages.order')->compact('order', $sale_order);
    }
}
