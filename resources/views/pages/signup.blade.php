@extends('layouts.main')

@section('title')
Đăng ký
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
font-weight: 100;
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
  <form action="/signup" method="POST" class="form-signin">
      @csrf
    <div class="text-center">
      <img class="mb-4" src="/storage/img/sf-logo.png" alt="" width="150" height="150">
      @if (Session::has('flag'))
      <div class="alert alert-{{Session::get('flag')}}" role="alert">
        {{ Session::get('message') }}
      </div>
      @endif
    </div>  
    <h1 class="h3 mb-3 font-weight-normal">Đăng ký tài khoản</h1>
    <div class="form-group">
      <label for="email">Tên</label>
      <input id="name" type="text" class="form-control" name="fullname" required autofocus>
    </div>

    <div class="form-group">
      <label for="email">Địa chỉ email</label>
      <input id="email" type="email" class="form-control" name="email" required>
    </div>

    <div class="form-group">
      <label for="password">Mật khẩu</label>
      <input id="password" type="password" class="form-control" name="password" required data-eye>
    </div>

     <div class="form-group">
      <label for="confirm-password">Nhập lại mật khẩu</label>
      <input id="password" type="password" class="form-control" name="password2" required data-eye>
    </div>

    <div class="form-group">
      <label>
        <input type="checkbox" name="aggree" value="1"> Đồng ý với chính sách và điều khoản công ty.
      </label>
    </div>

    <div class="form-group no-margin">
      <button type="submit" class="btn btn-success btn-block">
        Đăng ký
      </button>
    </div>
  </form>
</div>

@stop