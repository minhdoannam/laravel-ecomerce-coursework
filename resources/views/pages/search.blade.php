@extends('layouts.main')

@section('title')
MDN Boutique
@stop

@section('style')
a {
color: black;
}   

a:hover {
color: #544949;
}
@stop

@section('content')
<!-- Page Heading/Breadcrumbs -->
<h1 class="mt-4 mb-3">Danh mục sản phẩm có từ khóa
  <small>{{$keyword}}</small>
</h1>

<ol class="breadcrumb">
  <li class="breadcrumb-item">
    <a href="/">Home</a>
  </li>
  <li class="breadcrumb-item active">Tìm kiếm {{count($productList)}} sản phẩm</li>

</ol>

<div class="row">
  @foreach ($productList as $item)
  <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
   <div class="dvproduct">
    <a href="{{ url('detail', [$item->id])}}">
      <img src="/storage/product/{{$item->defaultImage}}" class="imgProduct">
    </a>
    <strong>{{$item->productName}}</strong>
    <p class="price-tag"> {{number_format (\App\Http\Controllers\PricelistController::getPriceByProductID($item->id),0,",","." )}} VND</p>
  </div>
</div>
@endforeach
</div> <!-- Row products -->

<!-- Pagination -->
<ul class="pagination justify-content-center">
  <li class="page-item">
    <a class="page-link" href="#" aria-label="Previous">
      <span aria-hidden="true">&laquo;</span>
      <span class="sr-only">Previous</span>
    </a>
  </li>
  <li class="page-item">
    <a class="page-link" href="#">1</a>
  </li>
  <li class="page-item">
    <a class="page-link" href="#">2</a>
  </li>
  <li class="page-item">
    <a class="page-link" href="#">3</a>
  </li>
  <li class="page-item">
    <a class="page-link" href="#" aria-label="Next">
      <span aria-hidden="true">&raquo;</span>
      <span class="sr-only">Next</span>
    </a>
  </li>
</ul>

</div>
<!-- /.row -->
@stop