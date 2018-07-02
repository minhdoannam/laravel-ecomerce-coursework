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
<div class="order-secton center-block">
	<div class="text-center">
		<img class="mb-4" src="/storage/img/sf-logo.png" alt="" width="150" height="150">
		<h3 class="h3 mb-3 font-weight-normal">Đơn hàng quý khách đã được xác nhận thành công!</h3>
		<h5>Order number: {{$order->id}}</h5>
	</div>
	<?php 
		$customer = \App\Http\Controllers\customerController::customerByID($order->customer);
	?>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-9">
			<strong>Thông tin đơn hàng</strong><br>
			{{$customer->lastName}} {{$customer->firstName}}<br>
			{{$customer->email}}<br>
			{{$order->orderPhone}}<br>
			{{ $order->orderAddress1 }}, {{ $order->orderAddress2 }}<br>
			{{ \App\Http\Controllers\CityController::getNameByID($order->orderCity)}}, {{$order->orderCountry}}<br>
			</div>

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
										<td><strong>Product Name</strong></td>
										<td class="text-right"><strong>Product Options</strong></td>
										<td class="text-right"><strong>Subscription Type</strong></td>
										<td class="text-right"><strong>Price</strong></td>

									</tr>
								</thead>
								<tbody>
									<!-- foreach ($order->lineItems as $line) or some such thing here -->
									<tr>
										<td>Veganboxen</td>
										<td class="text-right">Variable #1</td>
										<td class="text-right">Monthly</td>
										<td class="text-right">189 SEK</td>
									</tr>
									<tr>
										<td class="thick-line"></td>
										<td class="thick-line"></td>
										<td class="thick-line text-right"><strong>VAT - 12%</strong></td>
										<td class="thick-line text-right">incl.</td>
									</tr>
									<tr>
										<td class="no-line"></td>
										<td class="no-line"></td>
										<td class="no-line text-right"><strong>Shipping</strong></td>
										<td class="no-line text-right">incl.</td>
									</tr>
									<tr>
										<td class="no-line"></td>
										<td class="no-line"></td>
										<td class="no-line text-right"><strong>Total</strong></td>
										<td class="no-line text-right">189 SEK</td>
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