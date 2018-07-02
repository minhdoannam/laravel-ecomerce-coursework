<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class userController extends Controller
{
    public function Login(){
        if(Auth::user()) 
            return redirect('admin/');
        else
            return view('admin.login');
    }

    public function LoginAuth(Request $request){
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password, 'isAdmin' => 1]))
                return redirect('admin/');
        else
            return redirect('admin/login')->with('message','Log in failed!');
    }

    public function Logout(){
        Auth::logout();
        return redirect('admin/login');
    }

    public function customerLogin(){
        return view('pages.login');
    }

    public function customerLoginAuth(Request $request){

        $this->validate($request, 
            ['email' => 'required|email',
                'password' => 'required| min:6|max:50'
            ]);
        
        /*
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
            return redirect('/');
        else
            return view('pages.login')->with('message','Log in failed!');
        */
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
