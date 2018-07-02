@extends('layouts.main')

@section('title')
Đăng nhập tài khoản
@stop

@section('style')
#login-section {
display: -ms-flexbox;
display: flex;
-ms-flex-align: center;
align-items: center;
padding-top: 40px;
padding-bottom: 40px;
}

.form-signin {
width: 100%;
max-width: 450px;
padding: 15px;
margin: auto;
}
.form-signin .checkbox {
font-weight: 400;
}
.form-signin .form-control {
position: relative;
box-sizing: border-box;
height: auto;
padding: 10px;
font-size: 16px;
}
.form-signin .form-control:focus {
z-index: 2;
}
.form-signin input[type="email"] {
margin-bottom: -1px;
border-bottom-right-radius: 0;
border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
margin-bottom: 10px;
border-top-left-radius: 0;
border-top-right-radius: 0;
}


@stop

@section('content')

<div id="login-section">
  <form action="{{route('login')}}" method="POST"class="form-signin">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <div class="text-center">
      <img class="mb-4" src="/storage/img/sf-logo.png" alt="" width="150" height="150">
      <h1 class="h3 mb-3 font-weight-normal">Xin chào đến với Sunfrogs</h1>
    </div>  

    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="password"class="form-control" placeholder="Password" required>
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Ghi nhớ tài khoản
      </label>

    </div>
    <button class="btn btn-lg btn-success btn-block" type="submit" style="border-radius: 0;">Đăng nhập</button>
    <br>
    <p class="mb-3" style="font-size: 14px;">Nếu chưa có tài khoản? <a href="/signup">Tạo ngay</a></p>        
    <p class="mb-3"><a href="/forgot" style="font-size: 14px;">Quên mật khẩu</a></p>
  </form>
</div>

@stop