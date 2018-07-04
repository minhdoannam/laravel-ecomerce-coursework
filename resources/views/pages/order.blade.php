@extends('layouts.main')

@section('title')
Xác nhận đơn hàng
@stop

@section('style')
.order-section {
background: #ffffff;
border-radius:10px;
margin-top:20px;
margin-bottom:20px;
min-width: 660px;
}

@stop

@section('content')
{{ csrf_field() }}
<div class="order-section center-block">
	<div class="text-center">
		<img class="mb-4" src="/storage/img/sf-logo.png" alt="" width="150" height="150">
		<h3 class="h3 mb-3 font-weight-normal">Đơn hàng xác nhận thành công!</h3>
		<h5>Mã số đơn hàng: {{$order->id}}</h5>
	</div>
	<?php 
		$customer = \App\Http\Controllers\customerController::customerByID($order->customer);
	?>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<strong>Thông tin đơn hàng</strong><br>
			{{$customer->lastName}} {{$customer->firstName}}<br>
			{{$customer->email}}<br>
			{{$order->orderPhone}}<br>
			{{ $order->orderAddress1 }}, {{ $order->orderAddress2 }}<br>
			{{ \App\Http\Controllers\CityController::getNameByID($order->orderCity)}}, {{$order->orderCountry}}<br>
			</div>
			<div class="col-md-3">
				<a href="/">
				<button class="btn btn-warning" style="border-radius: 0px;">Tiếp tục mua sắm<i class="fa fa-shopping-cart"></i></button></a></div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">

					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<tr>
										<td><strong>Mã sản phẩm</strong></td>
										<td class="text-right"><strong>Mô tả</strong></td>
										<td class="text-right"><strong>Số lượng</strong></td>
										<td class="text-right"><strong>Tổng giá dòng</strong></td>
									</tr>
								</thead>
								<tbody>
									<!-- foreach ($order->lineItems as $line) or some such thing here -->
									@foreach ($cart as $row)
									<tr>
										<td>{{$row->id}}</td>
										<td class="text-right">{{$row->name}}</td>
										<td class="text-right">{{$row->qty}}</td>
										<td class="text-right">{{ $row->subtotal() }}</td>
									</tr>
									@endforeach
									<tr>
										<td class="thick-line"></td>
										<td class="thick-line"></td>
										<td class="thick-line text-right"><strong>VAT</strong></td>
										<td class="thick-line text-right">{{ $tax }} </td>
									</tr>
									<tr>
										<td class="no-line"></td>
										<td class="no-line"></td>
										<td class="no-line text-right"><strong>Phí vận chuyển</strong></td>
										<td class="no-line text-right" value="15000">15,000 VND</td>
									</tr>
									<tr>
										<td class="no-line"></td>
										<td class="no-line"></td>
										<td class="no-line text-right"><strong>Total</strong></td>
										<td class="no-line text-right">{{$total}}<u>đ</u></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
@stop