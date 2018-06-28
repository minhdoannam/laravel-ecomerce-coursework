<!DOCTYPE html>
<html lang="en">

<head>
    @include('includes.head')
    <title>{{$detail->productName}}</title>
    <meta name="csrf_token" content="{{ csrf_token() }}" />
</head>
<style type="text/css">
.gallery-wrap .img-big-wrap img {
    height: 450px;
    width: auto;
    display: inline-block;
    cursor: zoom-in;
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
    <div class="container">
        <br>
        <br>
        <!--  Có thể chèn vào đây các sản phẩm khác! -->
        <div class="card">
            <div class="row">
                <aside class="col-sm-5 border-right">
                    <article class="gallery-wrap">
                        <div class="img-big-wrap">
                            <div> <a href="#"><img id="sku-image" src="{{\App\Http\Controllers\ImageController::getImage($detail->skuCode)}}"></a></div>
                        </div>
                        <!-- slider-product.// -->
                        <!--
                        <div class="img-small-wrap">
                            <div class="item-gallery"> <img src=""> </div>
                            <div class="item-gallery"> <img src=""> </div>
                            <div class="item-gallery"> <img src=""> </div>
                            <div class="item-gallery"> <img src=""> </div>
                        </div>
                     -->
                        <!-- slider-nav.// -->
                    </article>
                    <!-- gallery-wrap .end// -->
                </aside>
                <aside class="col-sm-7" style="background-color: #F5F5F5;">
                    <article class="card-body p-5" id="{{$detail->id}}">
                        <h3 class="title mb-3" id="product_title" value="{{$detail->id}}">{{$detail->productName }}</h3>
                        <h5 class="title mb-3" style="font-size: 10px; margin-top: 3px;">Mã SKU: 
                            <span id="sku" value="{{$detail->skuCode}}">{{$detail->skuCode}}</span>
                        </h5>
                        <p class="price-detail-wrap">
                            <span class="price h3 text-warning"> 
                              <span class="num">{{number_format (\App\Http\Controllers\PricelistController::getPriceByProductID($detail->id),0,",","." )}}</span>
                            <span class="currency"> VND</span>
                            </span>
                        </p>
                        <!-- price-detail-wrap .// -->

                        <dl class="item-poperty">
                            <dt>Mô tả sản phẩm</dt>
                            <dd>{{$detail->productDescript}}</dd>
                        </dl>
                        <!--
                        <dl class="param param-feature">
                            <dt></dt>
                            <dd></dd>
                        </dl>
                        -->
                        <!-- item-property-hor .// -->
                        <?php
                            $options = \App\Http\Controllers\VariantController::getVariantOption($detail->skuCode);
                        ?>
                            @foreach ($options as $op)
                            <dl class="param param-feature">
                                <!-- Đổ ra các option -->
                                <dt style="font-weight: lighter; font-style: italic; color: #808080;" value="{{$op->optionID}}">{{\App\Http\Controllers\OptionController::getOption($op->optionID)}}</dt>
                                <!-- Đổ ra các dữ liệu lựa chọn, màu, kích thước -->
                                <?php
                                    $variants = \App\Http\Controllers\VariantController::getVariantValue($detail->id, $op->optionID);
                                ?>
                                    <dd id="variant-choose">
                                        @if ($op->optionID == 1)
                                        <div class="color-choose" id="option{{$op->optionID}}" value="{{$op->optionID}}">
                                            @foreach ($variants as $vari)
                                            <?php
                                                $color = \App\Http\Controllers\ValueController::getValueByID($vari->valueID);
                                            ?>
                                                <label>
                                                    <input type="radio" name="color" id="value_variant{{$color->id}}" value="{{ $color->id}}">
                                                    <span class="color-item" style="background-color: {{$color->valueName}}"></span>
                                                </label>
                                                @endforeach
                                        </div>
                                        @else
                                        <div class="other-choose" id="option{{$op->optionID}}" value="{{$op->optionID}}">
                                            @foreach ($variants as $vari)
                                            <?php
                                                $other = \App\Http\Controllers\ValueController::getValueByID($vari->valueID);
                                            ?>
                                                <label>
                                                    <input type="radio" name="other" id="value_variant{{$other->id}}" value="{{$other->id}}">
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
                                                <input class="form-control quantity-choose" type="number" name="quantity" min="1" max="20" step="1">
                                            </label>
                                        </dd>
                                    </dl>
                                    <!-- item-property .// -->
                                </div>
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
                                </div>
                                <!-- col.// -->
                            </div>
                            <!-- row.// -->
                            <br>
                            <a href="#" class="btn btn-md btn-primary text-uppercase" style="border-radius: 1;"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                            <a href="#" class="btn btn-md btn-primary text-uppercase" style="border-radius: 1;">Mua ngay  <i class="fa fa-angle-double-right"></i></a>
                          
                    </article>
                    <!-- card-body.// -->
                </aside> <!-- col.// -->
            </div>  <!-- row.// -->     
        </div> <!-- card.// -->
        
    </div>
    <!--container.//-->
    <br>
    <br>
    <br>
    @include('includes.footer')
    <!-- Bootstrap core JavaScript -->
    <script>
    $(document).ready(function() {

        var productID = $("#product_title").attr("value");
        var skuCode = $("#sku").attr("value");
        var urlString = '/getVariants';

        $.ajax({
            type: "GET",
            url: urlString,
            data: { skuCode: skuCode },
            success: function(data) {
                var jsonData = JSON.parse(data);
                for (var i = 0; i < jsonData.result.length; i++) {
                    var counter = jsonData.result[i];
                    $("#value_variant" + counter.valueID).prop("checked", true);
                }
            }
        });

        $(".other-choose").change(function() {
            var variantPair = new Array();
            $("#variant-choose > div").each(function() {
                var optionID = $(this).attr('value');
                var selectedValue = $(this).find('input:checked').attr('value');
                variantPair.push([optionID, selectedValue]);
            });
            $.ajax({
                type: "GET",
                url: '/getSkuCode',
                data: { productID: productID, values: variantPair },
                success: function(data) {
                    var jsonData = JSON.parse(data);
                    $("#sku").text(jsonData.result.skuCode);
                },
                error: function(xhr, textStatus, thrownError) {
                    alert(' Error!');
                }
            })
        });

        $(".color-choose").change(function() {
            var variantPair = new Array();
            $("#variant-choose > div").each(function() {
                var optionID = $(this).attr('value');
                var selectedValue = $(this).find('input:checked').attr('value');
                variantPair.push([optionID, selectedValue]);
            });

            $.ajax({
                type: "GET",
                url: '/getSkuCode',
                data: { productID: productID, values: variantPair },
                success: function(data) {
                    var jsonData = JSON.parse(data);
                    $.ajax({
                        type: "GET",
                        url: '/getSkuCode/changeImage',
                        data: { skuCode: jsonData.result.skuCode },
                        success: function(data) {
                            var jsonData = JSON.parse(data);
                            $("#sku-image").attr('src', jsonData.result.url);
                            $("#sku").text(jsonData.result.skuCode);
                        },
                        error: function(xhr, textStatus, thrownError) {
                            alert(' Error!');
                        }
                    })
                },
                error: function(xhr, textStatus, thrownError) {
                    alert(' Error!');
                }
            })

        });

    });



    /*
    $("#variant-choose").ready(function() {
        var productID = $("#product_title").attr("value");
        

    });
    */
    </script>
</body>

</html>