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

    public function customerSignUpNew(Request $req){
        $validator = $this->validate($req,[
                'fullname' => 'required',
               'email' => 'unique:users,email,$this->id,id',
            'password' => 'required|min:3',
            'password2' => 'required|same:password'

        ],[
            'fullname.required' => 'Bạn chưa nhập tên!',
            'email.required' => 'Bạn chưa nhập email!',
            'email.unique' => 'Email đã tồn tại',
            'email.email' => 'Email không đúng định dạng.',
            'password.min' => 'Mật khẩu phải chứa ít nhất 6 kí tự',
            'password2.required' => 'Nhập lại mật khẩu',
            'password2.same' => 'Mật khẩu nhập lại không trùng với mật khẩu trên!'
        ]);

        

        $user = new User;
        $user->firstName = $req->fullname;
        $user->email = $req->email;
        $user->password = bcrypt($req->password);
        $user->isAdmin = 0;
        $user->isActive= 1;
        $user->verified = 1;
        $user->save();

        return redirect('signup')->with(['flag' => 'success', 'message' => 'Đăng ký tài khoản thành công. Hãy đăng nhập vào nhé!']);
    }

    public function customerForgot(){
        return view ('pages.forgot');
    }
}