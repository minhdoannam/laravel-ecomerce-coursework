<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\User;

class customerController extends Controller
{  
    public static function customerByID($cusId) {
        return DB::table('users')->where('isAdmin', 0)->where('id', $cusId)->get()->first();
    }
   public function customerLogin(){
        return view('pages.login');
    }

    public function customerLoginAuth(Request $request){

        if(Auth::attempt(['email' => $request->email, 'password' => $request->password, 'isAdmin' => 0])) 
            return redirect('/');
        else
            return redirect()->back()->with(['flag' => 'danger','message' => 'Đăng nhập không thành công']);
        
    }
    
    public function customerLogout(){
        Auth::logout();
        return redirect('/');
    }

     public function customerSignUp(){
        return view('pages.signup');
    }

    public function customerForgot(){
        return view ('pages.forgot');
    }
}