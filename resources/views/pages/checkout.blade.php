@extends ('layouts.main')

@section('title')
Thanh toán đơn hàng
@stop

@section('style')


.border-top { border-top: 1px solid #e5e5e5; }
.border-bottom { border-bottom: 1px solid #e5e5e5; }
.border-top-gray { border-top-color: #adb5bd; }

.box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }

.lh-condensed { line-height: 1.25; }

@stop

@section('content')
<div class="py-5 text-center">
  <img class="d-block mx-auto mb-4" src="/storage/img/sf-logo.png" alt="" width="100" height="100">
  <h2>Thanh toán đơn hàng</h2>
  <p class="lead">Chỉ 1 bước nữa, là có thể nhận hàng ngay!</p>
</div>

<div class="row">
  <div class="col-md-4 order-md-2 mb-4">
    <h4 class="d-flex justify-content-between align-items-center mb-3">
      <span class="text-muted">Giỏ hàng của bạn</span>
      <span class="badge badge-secondary badge-pill">{{Cart::count()}}</span>
    </h4>
    <ul class="list-group mb-3">
      @foreach (Cart::content() as $row)
      <li class="list-group-item d-flex justify-content-between lh-condensed">
        <div>
          <h6 class="my-0">{{$row->name}}</h6>

          <small class="text-muted">
            <?php
              $variants =  \App\Http\Controllers\VariantController::getVariantCollection($row->id);
            ?>
            @foreach ($variants as $vari)
            {{ \App\Http\Controllers\ValueController::getValueByID($vari->valueID)->valueName}}
            @endforeach
          </small>
        </div>
        <span class="text-muted"> {{$row->qty}}</span>
        <span class="text-muted">{{$row->subtotal()}} <u>đ</u></span>
      </li>
     @endforeach
      <!--
      <li class="list-group-item d-flex justify-content-between bg-light">
        <div class="text-success">
          <h6 class="my-0">Promo code</h6>
          <small>EXAMPLECODE</small>
        </div>
        <span class="text-success">-$5</span>
      </li>
    -->
     <li class="list-group-item d-flex justify-content-between">
        <span>Thuế </span>
        <strong>{{Cart::tax()}} <u>đ</u></strong>
      </li>

      <li class="list-group-item d-flex justify-content-between">
        <span>Tổng thanh toán </span>
        <strong>{{Cart::total()}} <u>đ</u></strong>
      </li>

    </ul>
    <!--
    <form class="card p-2">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Promo code">
        <div class="input-group-append">
          <button type="submit" class="btn btn-secondary">Redeem</button>
        </div>
      </div>
    </form>
  -->
  </div>
 
  <div class="col-md-8 order-md-1">
    <h4 class="mb-3">Thông tin đơn hàng</h4>
    <form class="needs-validation" novalidate>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="firstName">Tên</label>
          <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
          <div class="invalid-feedback">
            Tên cần phải có!
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="lastName">Họ</label>
          <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
          <div class="invalid-feedback">
            Họ cần phải có!
          </div>
        </div>
      </div>
      <div class="mb-3">
        <label for="email">Email</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text">@</span>
          </div>
          <input type="email" class="form-control" id="email" placeholder="you@example.com">
          <div class="invalid-feedback">
            Email cần có để gửi thông tin đơn hàng
          </div>
        </div>
      </div>
      <div class="mb-3">
          <label for="lastName">SĐT</label>
          <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
          <div class="invalid-feedback">
            Số điện thoại
      </div>
      <div class="mb-3">
        <label for="address">Địa chỉ giao hàng</label>
        <input type="text" class="form-control" id="address" placeholder="123 Võ Văn Tần" required>
        <div class="invalid-feedback">
          Please enter your shipping address.
        </div>
      </div>

      <div class="mb-3">
        <label for="address2">Địa chỉ giao hàng 2 <span class="text-muted">(Tùy chọn)</span></label>
        <input type="text" class="form-control" id="address2" placeholder="Phường, Quận">
      </div>

      <div class="row">
        <div class="col-md-5 mb-3">
          <label for="country">Quốc gia</label>
          <select class="custom-select d-block w-100" id="country" required>
            <option value="">Chọn.</option>
            <option value="Vietnam">Việt Nam</option>
          </select>
          <div class="invalid-feedback">
            Please select a valid country.
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <label for="state">Thành phố</label>
          <select class="custom-select d-block w-100" id="state" required>
            <option value="">Chọn.</option>
            <?php $citys =  \App\Http\Controllers\CityController::load(); 
            ?>
            @foreach ($citys as $ci)
              <option value="{{ $ci->id }}"> {{ $ci->cityName }}</option> 
            @endforeach 
          </select>
          <div class="invalid-feedback">
            Please provide a valid state.
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="zip">Mã bưu điện</label>
          <input type="text" class="form-control" id="zip" placeholder="" required>
          <div class="invalid-feedback">
            Zip code required.
          </div>
        </div>
      </div>
      <hr class="mb-4">
      <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="same-address">
        <label class="custom-control-label" for="same-address">Địa chỉ giao hàng như trên hóa đơn</label>
      </div>
      <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="save-info">
        <label class="custom-control-label" for="save-info">Lưu thông tin cho lần thanh toán kế tiếp</label>
      </div>
      <hr class="mb-4">

      <h4 class="mb-3">Thông tin thanh toán</h4>

      <div class="d-block my-3">
        <div class="custom-control custom-radio">
          <input id="cod" name="paymentMethod" type="radio" class="custom-control-input" checked required value="1">
          <label class="custom-control-label" for="cod">COD <span class="text-muted"><i>(Thanh toán tại chỗ)</i></span></label>
          <br>
          <small class="text-muted">Quý khách chọn hình thức này không cần điền thông tin thẻ thanh toán!</small>
        </div>
        <div class="custom-control custom-radio">
          <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required value="2">
          <label class="custom-control-label" for="debit">Thẻ ngân hàng debit</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" required value="3">
          <label class="custom-control-label" for="credit">Thẻ tín dụng</label>
        </div>
      </div>
      <div  id="payment-cart-information">
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="cc-name">Tên thẻ</label>
          <input type="text" class="form-control" id="cc-name" placeholder="" required>
          <small class="text-muted">Tên đầy đủ trên thẻ</small>
          <div class="invalid-feedback">
            Name on card is required
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="cc-number">Mã thẻ</label>
          <input type="text" class="form-control" id="cc-number" placeholder="" required>
          <div class="invalid-feedback">
            Credit card number is required
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 mb-3">
          <label for="cc-expiration">Ngày hết hạn</label>
          <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
          <div class="invalid-feedback">
            Expiration date required
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="cc-expiration">CVV</label>
          <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
          <div class="invalid-feedback">
            Security code required
          </div>
        </div>
      </div> 
      </div> <!-- End information card -->   
      <button class="btn btn-danger btn-lg btn-block" type="submit">Continue to checkout <i class="fa fa-cart-arrow-down"></i></button>
      <hr class="mb-4">
   
    </form>
  </div>
</div>

<script>
</script>
@stop