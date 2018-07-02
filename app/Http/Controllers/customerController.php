<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class customerController extends Controller
{  
    function __construct() {
       
    }
   public function customerLogin(){
        return view('pages.login');
    }

    public function customerLoginAuth(Request $request){

        if(Auth::attempt(['email' => $request->email, 'password' => $request->password, 'isAdmin' => 0])) 
            return redirect('/');
        else
            return view('pages.login')->with('message','Log in failed!');
        
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