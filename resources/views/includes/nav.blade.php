<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
<div class="container">
    <a class="navbar-brand" href="/"><img style="max-width: 50px; max-height: 50px; margin-top: -5px;" src="/storage/img/sf-logo.png"></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!--Search bar --->
    <div class="search-container">
        <form class="input-with-submit header-search" method="GET">
            <div class="input-group" id="search-container">
                <input type="text" class="form-control" placeholder="Tìm kiếm..." name="keyword">
                <span class="input-group-button">
                    <button class="btn btn-default" style="background-color: orange" type="submit">
                      <i class="fa fa-search" id="icColor"></i>
                  </button>
              </span>
          </div>
      </form>
  </div>
  <!-- Search bar END -->
  <div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Sản phẩm
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="#">T-shirt</a>
                <a class="dropdown-item" href="#">Polo shirt</a>
                <a class="dropdown-item" href="#">Hoodie</a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/login">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#myModal">  
                <span id="cart-items" value="{{Cart::count()}}">
                    <i id="cart-icon" class="fa fa-shopping-cart" aria-hidden="true"></i>
                    {{Cart::count()}}
                </span> 
            </a>
        </li>
    </ul>
</div>
</div>
</nav>
<!-- Cart modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title"><i class="fa fa-shopping-cart"></i>  Giỏ hàng của bạn</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
            <table id="cart" class="table table-hover table-condensed" style="font-size: 14px; font-family: 'Roboto', sans-serif;">
                <thead>
                    <tr>
                        <th style="width:25%">Sản phẩm</th>
                        <th style="width:25%">Mô tả</th>
                        <th style="width:18%">Số lượng</th>
                        <th style="width:18%" class="text-center">Giá</th>
                        <th style="width:10%"></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach (Cart::content() as $row)
                    <tr class="cart-row" value="{{$row->rowId}}">
                        <td data-th="product">
                            <div class="row">
                                <div class="col-sm-2 hidden-xs"><img src="/storage/product/{{\App\Http\Controllers\ImageController::getImage($row->id)}}" alt="" class="img-responsive" style="height: 100px; width: 100px;"></div>

                            </div>
                        </td>
                        <td data-th="description" class="cart-description">
                            <span>{{$row->name}}</span>
                            <span>Trắng, X</span>
                            <span><p>{{$row->id}}</p></span>
                        </td>

                        <td data-th="quantity" class="cart-quantity">
                                    <!--
                                    <input type="number" class="form-control text-center" style="font-size: 14px; font-family: 'Roboto', sans-serif;" value="{{$row->qty}}" min="1" >
                                -->
                                <button class="minus-btn" type="button" name="button">
                                   <img src="/storage/img/minus.svg" alt="" />
                               </button>

                               <input id="cart-quantity-row" type="text" name="name" value="{{$row->qty}}" style="font-size: 14px; font-family: 'Roboto', sans-serif;" min="1" disabled="disabled">
                               <button class="plus-btn" type="button" name="button">
                                <img src="/storage/img/plus.svg" alt="" />
                            </button>  
                        </td>
                        <td data-th="subtotal" class="text-center"><span style="color: black; "> {{ $row->subtotal() }} <u>đ</u> </span></td>
                        
                        <td class="actions" data-th=""> 
                            <button class="btn btn-danger btn-sm cart-delete-item" style="float: right;"><i class="fa fa-trash-o"></i></button>                            
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr class="visible-xs">
                        <td></td>
                        <td></td>
                        <td colspan="3"><strong>Thuế VAT: </strong><span style="float: right; ">{{ Cart::tax() }} <u>đ</u></span></td>
                    </tr>
                    <tr class="visible-xs">
                        <td></td>
                        <td></td>
                        <td colspan="3"><strong>Tổng hóa đơn: </strong> <span style="float: right; font-weight: bold;">{{ Cart::total() }} <u>đ</u></span></td>
                    </tr>
                </tfoot>
            </table>
        </div> 
        <!-- End cart-body -->

        <!-- Modal footer -->
        <div class="modal-footer">
            <button type="button" class="btn btn-info" style="border-radius: 0;" data-dismiss="modal"><i class="fa fa-toggle-left"></i> Tiếp tục mua sắm</button>
             <button  id="cart-destroy" type="button" class="btn btn-warning" style="border-radius: 0; float: left;" data-dismiss="modal"><i class="fa fa-cart-arrow-down"></i> Xóa giỏ hàng</button>
            <form action="/checkout" method="GET">
                  <button  id="cart-checkout" type="submit" class="btn btn-success" style="border-radius: 0;"><i class="fa fa-credit-card"></i> Thanh toán</button>
            </form>
              
        </div>
        
    </div>
    <!-- End content -->
</div>
<!-- End dialog -->
</div>
<!-- End Modal -->

<!-- End container -->
<script type="text/javascript">
    $(document).ready(function () {
        var count = $("#cart-items").attr('value');
        if (count > 0 ) {
            $("#cart-items").addClass("badge badge-warning");
        };

        $(".plus-btn").click(function() {
                var rowID = $(this).parent().parent().attr("value");
                var updateCartUrl = '/cart/update/' + rowID;
                var quantity = $("#cart-quantity-row").val();
                quantity = parseInt(quantity) + 1;
                $.ajax({
                    type: "GET",
                    url: updateCartUrl,
                    data: { rowID : rowID, quantity: quantity},
                    success: function(data) {
                        $("#myModal").removeClass("in");
                        $(".modal-backdrop").remove();
                        $("#myModal").hide();
                        $("#navigation").html(data);
                        $("#myModal").addClass("in");
                        $("#myModal").modal('show');

                    }, 
                    error: function(xhr, textStatus, thrownError) {
                        alert(' Error!');
                    }
                }); 
        });
        
         $(".minus-btn").click(function() {
                var rowID = $(this).parent().parent().attr("value");
                var updateCartUrl = '/cart/update/' + rowID;
                var quantity = $("#cart-quantity-row").val();
                quantity = parseInt(quantity) - 1;
                $.ajax({
                    type: "GET",
                    url: updateCartUrl,
                    data: { rowID : rowID, quantity: quantity},
                    success: function(data) {
                        $("#myModal").removeClass("in");
                        $(".modal-backdrop").remove();
                        $("#myModal").hide();
                        $("#navigation").html(data);
                        $("#myModal").addClass("in");
                        $("#myModal").modal('show');

                    }, 
                    error: function(xhr, textStatus, thrownError) {
                        alert(' Error!');
                    }
                }); 
        });

         $("#cart-destroy").click(function() {
            if (confirm("Có chắc muốn hủy giỏ hàng?") == true) {
                var removeCartUrl = '/cart/destroy';
                $.ajax({
                    type: "GET",
                    url: removeCartUrl,
                    data: {},
                    success: function(data) {
                        $("#myModal").removeClass("in");
                        $(".modal-backdrop").remove();
                        $("#myModal").hide();
                        $("#navigation").html(data);
                    }, 
                    error: function(xhr, textStatus, thrownError) {
                        alert(' Error!');
                    }
                }); 
            } 
            else {
                return false;
            }
         })
        

        $(".cart-delete-item").click(function() {
            if (confirm("Có chắc muốn xóa khỏi giỏ hàng?") == true) {
                var rowID = $(this).parent().parent().attr("value");
                var removeCartUrl = '/cart/remove/' + rowID;
                $.ajax({
                    type: "GET",
                    url: removeCartUrl,
                    data: { rowID : rowID },
                    success: function(data) {
                        $("#myModal").removeClass("in");
                        $(".modal-backdrop").remove();
                        $("#myModal").hide();
                        $("#navigation").html(data);
                        $("#myModal").modal('show');
                        $("#myModal").addClass("in");
                        
                    }, 
                    error: function(xhr, textStatus, thrownError) {
                        alert(' Error!');
                    }
                }); 
            } 
            else {
                return false;
            }
        });

    });
</script>
