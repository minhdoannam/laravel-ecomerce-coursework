<!DOCTYPE html>
<html lang="en">

<head>
	@include('includes.head')
</head>
<style type="text/css">

.gallery-wrap .img-big-wrap img {
    height: 450px;
    width: auto;
    display: inline-block;
    cursor: zoom-in;
    padding-top: 50px;
    padding-left: 25px;
}

.gallery-wrap .img-small-wrap .item-gallery {
    width: 60px;
    height: 60px;
    border: 1px solid #ddd;
    margin: 7px 2px;
    display: inline-block;
    overflow: hidden;
}

.gallery-wrap .img-small-wrap {
    text-align: center;
}

.gallery-wrap .img-small-wrap img {
    max-width: 100%;
    max-height: 100%;
    object-fit: cover;
    border-radius: 4px;
    cursor: zoom-in;
}
</style>

<body>
    <!-- Navigation -->
    @include('includes.nav')
    <?php 
        $str = "a string here";
    ?>
    <div class="container">
        <br>
        <br>
        <!--  Có thể chèn vào đây các sản phẩm khác! -->
        <div class="card"
        >
            <div class="row">
                <aside class="col-sm-5 border-right">
                    <article class="gallery-wrap">
                        <div class="img-big-wrap">
                            <div> <a href="#"><img src="{{\App\Http\Controllers\ImageController::getImage($detail->skuCode)}}"></a></div>
                        </div>
                        <!-- slider-product.// -->
                        <div class="img-small-wrap">
                            <div class="item-gallery"> <img src=""> </div>
                            <div class="item-gallery"> <img src=""> </div>
                            <div class="item-gallery"> <img src=""> </div>
                            <div class="item-gallery"> <img src=""> </div>
                        </div>
                        <!-- slider-nav.// -->
                    </article>
                    <!-- gallery-wrap .end// -->
                </aside>
                <aside class="col-sm-7" style="background-color: #F5F5F5;">
                    <article class="card-body p-5" id="{{$detail->id}}">
                        <h3 class="title mb-0">{{$detail->productName }}</h3>
                        <h5 class="title mb-3" style="font-size: 10px; margin-top: 3px;">Mã SKU: 
                            <span  id="sku" value="{{$detail->skuCode}}">{{$detail->skuCode}}</span>
                        </h5>
                        <p class="price-detail-wrap">
                            <span class="price h3 text-warning"> 
		                      <span class="num">{{number_format (\App\Http\Controllers\PricelistController::getPriceByProductID($detail->id),0,",","." )}}</span> 
                             <span class="currency"> VND</span>
                            </span>
                        </p>
                        
                        <!-- price-detail-wrap .// -->
                        
                        <dl class="item-poperty">
                            <dt></dt>
                            <dd></dd>
                        </dl>
                        <dl class="param param-feature">
                            <dt></dt>
                            <dd></dd>
                        </dl>
                        <!-- item-property-hor .// -->
                        <?php
                            $options = \App\Http\Controllers\VariantController::getVariantOption($detail->skuCode);
                        ?>
                        @foreach ($options as $op)
                            <dl class="param param-feature">
                                <!-- Đổ ra các option -->
                                <dt style="font-weight: lighter; font-style: italic; color: #808080;" id="option{{$op->optionID}}">{{\App\Http\Controllers\OptionController::getOption($op->optionID)}}</dt>
                                <!-- Đổ ra các dữ liệu lựa chọn, màu, kích thước -->
                                <?php
                                    $variants = \App\Http\Controllers\VariantController::getVariantValue($detail->id, $op->optionID);
                                ?>
                                <dd>
                                    @if ($op->optionID == 1) 
                                        <div class="color-choose">
                                        @foreach ($variants as $vari)
                                            <?php
                                                $color = \App\Http\Controllers\ValueController::getValueByID($vari->valueID);
                                            ?>
                                                <label>
                                                    <input type="radio" class="color" value="{{$color->id}}">
                                                    <span class="color-item" style="background-color: {{$color->valueName}}"></span>
                                                </label>
                                        @endforeach
                                        </div>
                                    @else
                                        <div class="other-choose">
                                        @foreach ($variants as $vari)
                                            <?php
                                                $other = \App\Http\Controllers\ValueController::getValueByID($vari->valueID);
                                            ?>
                                             <label>
                                                    <input type="radio" class="other" value="{{$other->id}}">
                                                    <span class="other-item">{{$other->valueName}}</span>
                                            </label>                                   
                                        @endforeach
                                        </div>  
                                    @endif
                                </dd>
                            </dl>
                        @endforeach
                        <!-- item-property-hor .// -->
                        <!-- item-property-hor .// -->
                        <hr>
                        <div class="row">
                            <div class="col-sm-5">
                                <dl class="param param-inline">
                                    <dt>Số lượng</dt>
                                    <dd>
                                        <label>
                                            <input class="form-control quantity-choose" type="number" name="quantity" min="1" max="20" step="1" value="">
                                        </label>
                                        
                                    </dd>
                                </dl>
                                <!-- item-property .// -->
                            </div>
                            <!-- col.// -->
                            <div class="col-sm-7">
                                <!--
                                <dl class="param param-inline">
                                    <dt>Size: </dt>
                                    <dd>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">SM</span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">MD</span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">XXL</span>
                                        </label>
                                    </dd>
                                </dl>
                                -->
                                <!-- item-property .// -->
                            </div>
                            <!-- col.// -->
                        </div>
                        <!-- row.// -->
                        <br>
                       
                        <a href="#" class="btn btn-md btn-primary text-uppercase" style="border-radius: 0;"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                         <a href="#" class="btn btn-md btn-primary text-uppercase" style="border-radius: 0;"><i class="fa fa-credit-card"></i> Mua ngay</a>
                    </article>
                    <!-- card-body.// -->
                </aside>
                <!-- col.// -->
            </div>
            <!-- row.// -->
        </div>

        <!-- card.// -->
    </div>
    <!--container.//-->
    <br>
    <br>
    <br>
    @include('includes.footer')
    <!-- Bootstrap core JavaScript -->
    <script>
        $(document).ready(function() {
            var skuCode = $("#sku").attr('value');

         });
    </script>
</body>

</html>