<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Sale_order;
use Carbon\Carbon;
use Gloudemans\Shoppingcart\Facades\Cart;

class OrderController extends Controller
{
    //
    public function checkout(Request $req) {
		
		//Kiểm tra xem ngưởi dùng có trong email chưa? Nếu chưa có thì thêm vào...
		$email = $req->email;
		$queryCustomer = DB::table('users')->where('email', $email)->get();
		$cus = null;
		if ($queryCustomer->isEmpty()) {
			DB::table('users')->insert([
				'email' => $email,
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
			$cus = DB::table('users')->where('email', $email)->select('id')->get()->first();
		}
		else {
			$cus = DB::table('users')->where('email', $email)->select('id')->get()->first();
		}
		//Lấy id để thêm vào...
		//Thêm vào sale_order
		DB::table('sale_order')->insert(
    		[
    			'paymentType' => $req->paymenMethod,
    			'customer' => $cus->id,
    			'orderedDate' => Carbon::now(),
    			'orderPhone' => $req->phone,
    			'orderAddress1' => $req->address,
    			'orderAddress2' => $req->address2,
    			'orderCity' => $req->state,
    			'orderCountry' => $req->country,
    			'stt' => 1
    		]
		);

		$sale_order = DB::table('sale_order')
					->where('customer', $cus->id)
					->orderBy('id', 'desc')
					->get()
					->first();

		$cart_content = Cart::content();
		foreach ($cart_content as $row)
			DB::table('order_line')->insert([
				'orderID' => $sale_order->id,
				'skus' => $row->id,
				'quantity' => $row->qty
			]);
		
		Cart::destroy();

    	return view('pages.order')->with('order', $sale_order);
    }
}
