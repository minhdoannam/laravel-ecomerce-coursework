@extends('layouts.main')

@section('title')
Quên tài khoản
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
     <div class="text-center">
      <img class="mb-4" src="/storage/img/sf-logo.png" alt="" width="150" height="150">
        <h1 class="h3 mb-3 font-weight-normal">Quên mật khẩu</h1>
      </div>  
       
    <div class="form-group">
      <label for="email">Địa chỉ Email</label>
      <input id="email" type="email" class="form-control" name="email" value="" required autofocus>
      <div class="form-text text-muted">
        Gửi link reset password
      </div>
    </div>

    <div class="form-group no-margin">
      <button type="submit" class="btn btn-primary btn-block" style="border-radius: 0px;">
        Reset mật khẩu
      </button>
    </div>
  </form>
</div>

@stop