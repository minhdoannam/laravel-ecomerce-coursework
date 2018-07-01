@extends ('layouts.main') 
@section('title') {{$product->productName}} 
@stop 

@section('style') .gallery-wrap .img-big-wrap img { height: 450px; width: auto; display: inline-block; cursor: zoom-in; } .gallery-wrap .img-small-wrap .item-gallery { width: 60px; height: 60px; border: 1px solid #ddd; margin: 7px 2px; display: inline-block; overflow: hidden; } .gallery-wrap .img-small-wrap { text-align: center; } .gallery-wrap .img-small-wrap img { max-width: 100%; max-height: 100%; object-fit: cover; border-radius: 4px; cursor: zoom-in; } 
@stop 

@section('content')
<br>
<br>
<!--  Có thể chèn vào đây các sản phẩm khác! -->
<div class="card">
    <div class="row">
        <aside class="col-sm-5 border-right">
            <article class="gallery-wrap">
                <div class="img-big-wrap">
                    <div> <a href="#"><img id="sku-image" src="/storage/product/{{$product->defaultImage}}"></a></div>
                </div>
                <!-- slider-product.// -->
                <div class="img-small-wrap">
                    <div class="item-gallery"> <img src=""> </div>   
                </div>
                <!-- slider-nav.// -->
            </article>
            <!-- gallery-wrap .end// -->
        </aside>
        <aside class="col-sm-7" style="background-color: #F5F5F5;">
            <article class="card-body p-5" id="{{$product->id}}">
                <h3 class="title mb-0" id="product-title" value="{{$product->id}}">{{$product->productName }}</h3>
                <span id="sku" value="{{$skuList->first()->skuCode}}"></span>
                <p class="price-detail-wrap">
                    <span class="price h3 text-warning"> 
                      <span class="num">{{number_format (\App\Http\Controllers\PricelistController::getPriceByProductID($product->id),0,",","." )}}</span>
                      <span class="currency"> <u>đ</u></span>
                  </span>
              </p>
              <dl class="param param-feature">
                <dt style="font-weight: lighter; font-style: italic; color: #808080;" value="">Chọn màu sắc</dt>
                <!-- Đổ ra các dữ liệu lựa chọn, màu, kích thước -->
                <dd id="variant-choose">
                    <?php
                    $color =\App\Http\Controllers\VariantController::getVariantValue($product->id, 1);
                    ?>
                    <div class="color-choose">
                        @foreach ($color as $c)
                        <label>
                            <?php
                            $item = \App\Http\Controllers\ValueController::getValueById($c->valueID);
                            ?>
                            <input type="radio" name="color" id="value_variant{{$item->id}}"value="{{ $item->id}}">
                            <span class="color-item" style="background-color: {{$item->valueName}}"></span>
                        </label>      
                        @endforeach
                    </div>

                </dd>
            </dl>
            <dl class="param param-feature">
                <dt style="font-weight: lighter; font-style: italic; color: #808080;" value="">Các biến thể</dt>
                <!-- Đổ ra các dữ liệu lựa chọn, màu, kích thước -->
                <dd id="sku-table">
                    <div class="table-responsive">
                        <table class="table table-sm table-borderless" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr align="center">
                                    <th style="width: 33%">Mã SKU</th>
                                    <th>Còn hàng</th>
                                    <th>Thuộc tính</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="sku-list">
                               @foreach ($skuList as $sl)
                               <tr class="odd gradeX color-class{{ \App\Http\Controllers\VariantController::getVariantColor($sl->skuCode) }}" align="center" > 
                                <td value = "{{$sl->skuCode}}"> {{ $sl -> skuCode }} </td>
                                <td>{{$sl->inStock}}</td>
                        <!-- hiển thị atributte -->
                        <td>
                            @foreach($variantList as $vl)
                            @if($vl->skuCode==$sl -> skuCode && $vl->optionID != 1)
                            {{$vl->Option_values->valueName}}<br>
                            @endif
                            @endforeach
                        </td>

                        <td class="center add-to-cart"  > 
                            <i class="fa fa-shopping-cart"></i>
                        </td>
                    </tr> 
                    @endforeach 
                </tbody>
            </table>
        </div>
    </dd>
</dl>

<!-- row.// -->

<!--  <a href="#" id = "add-to-cart" class="btn btn-md btn-primary text-uppercase" style="border-radius: 0;"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a> -->
                <!--
                <a href="{{url('cart')}}" class="btn btn-md btn-primary text-uppercase" style="border-radius: 0;"><i class="fa fa-credit-card"></i> Thanh toán</a>
            -->
        </article>
        <!-- card-body.// -->
    </aside>
    <!-- col.// -->
    <!-- row.// -->
</div>
<!-- card.// -->
</div>
<!--container.//-->
<br>
<br>
<br>
</div>
</div>
<!-- Modal with cart -->
<!-- Bootstrap core JavaScript -->
<script>
    $(document).ready(function() {

        var productID = $("#product-title").attr("value");
        var skuCode = $("#sku").attr("value");
        var urlString = '/getVariants';
        var n = 0;
        $.ajax({
            type: "GET",
            url: urlString,
            data: { skuCode: skuCode },
            success: function(data) {
                var jsonData = JSON.parse(data);
                for (var i = 0; i < jsonData.result.length; i++) {
                    var counter = jsonData.result[i];
                    $("#value_variant" + counter.valueID).prop("checked", true);

                    var colorID = $(".color-choose").find('input:checked').attr('value');

                    $("#sku-list > tr").hide();
                    $(".color-class" + colorID).show();
                };
            },
            error: function(xhr, textStatus, thrownError) {
                alert(' Error!');
            }
        });


        $(".add-to-cart").click(function() {
            var addCartUrl = '/cart/add/' + skuCode;
            var quantity = 1;
            var skuBuy = $(this).closest('tr').find('td:eq(0)').attr("value");
            $.ajax({
                type: "GET",
                url: addCartUrl,
                data: { skuBuy: skuBuy, productID: productID, quantity: quantity },
                success: function(data) {
                    var cart = $('#cart-icon');
                    var imgtodrag = $("#sku-image");
                    if (imgtodrag) {
                        var imgclone = imgtodrag.clone().offset({
                            top: imgtodrag.offset().top,
                            left: imgtodrag.offset().left
                        }).css({
                            'opacity': '0.5',
                            'position': 'absolute',
                            'height': '300px',
                            'width': '300px',
                            'z-index': '100'
                        }).appendTo($('body')).animate({
                            top: cart.offset().top + 10,
                            left: cart.offset().left + 10,
                            width: 75,
                            height: 75
                        }, 'fast');

                        imgclone.animate({
                            'width': 0,
                            'height': 0
                        }, function() {
                            $(this).detach()
                        });

                        $("#navigation").html(data);
                    }

                },
                error: function(xhr, textStatus, thrownError) {
                    alert(' Error!');
                }
            })
        });

        $(".color-choose").change(function() {
            var colorID = $(this).find('input:checked').attr('value');
            $("#sku-list tr").hide();
            $(".color-class" + colorID).show();
            /*
            var skuCode = $("")
                    $.ajax({
                        type: "GET",
                        url: '/getSkuCode/changeImage',
                        data: { skuCode: skuCode },
                        success: function(data) {
                            var jsonData = JSON.parse(data);
                            $("#sku-image").attr('src', jsonData.result.url);
                            $("#sku").text(jsonData.result.skuCode);
                            $("#sku").attr("value", jsonData.result.skuCode);
                        },
                        error: function(xhr, textStatus, thrownError) {
                            alert(' Error!');
                        }
                    })
            })
            */
        });
        /*
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
                            $("#sku").attr("value", jsonData.result.skuCode);
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
        */

    });
</script>
@stop