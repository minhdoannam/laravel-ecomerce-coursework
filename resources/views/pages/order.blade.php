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
    <div class="text-center">
      <img class="mb-4" src="/storage/img/sf-logo.png" alt="" width="150" height="150">
      <h1 class="h3 mb-3 font-weight-normal">Đơn hàng quý khách đã được xác nhận!</h1>
    </div>

    <button class="btn btn-lg btn-success btn-block" type="" style="border-radius: 0;"> Tiếp tục mua sắm</button>

@stop