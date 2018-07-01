@extends('admin.layout.index')
@section('contentPages')
<!-- Modal New -->
<div class="modal fade" id="modalNew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">New Product</h4>
			</div>
			<div class="modal-body">
				<form  action="admin/product/newProduct" method="POST" enctype="multipart/form-data">
					{{csrf_field()}}
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Product Name</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="text" class="form-control" id="new_productName" name="new_productName" required="">
							</div>
						</div>
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">		
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Category</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<select class="form-control input-width" name="new_category">
									@foreach($categoryList as $cl)
									<option value="{{ $cl->id }}">{{ $cl->categoryName }}</option>
									@endforeach
								</select>
							</div>
						</div>
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Description</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="text" class="form-control" id="new_description" name="new_description" required="">
							</div>
						</div>
					</div>
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Price</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="number" class="form-control" id="new_price" name="new_price" value="0" required="">
							</div>
						</div>
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Default Image</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="file" class="form-control" id="new_defaultImage" name="new_defaultImage" required="">
							</div>
						</div>
					</div> 
					<div class="modal-footer">
						<button id="btnSubmitModel" type="submit" class="btn btn-info"><i class="fa fa-check"></i>Add</button>    
					</div>

				</form>
			</div>

		</div>
	</div>
</div>

<!-- modal Delete -->
<div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel" style="color: red">Do you want to delete?</h4>
			</div>
			<div class="modal-body">
				<form  action="admin/product/deleteProduct" method="POST">
					{{csrf_field()}}
					<div class="form-group">
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>ID</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="text" class="form-control" id="delete_id" name="delete_id" readonly>
							</div>
						</div> 
					</div> 
					<div class="modal-footer">
						<button id="btnSubmitModel" type="submit" class="btn btn-info"><i class="fa fa-check"></i>Delete</button>    
					</div>

				</form>
			</div>

		</div>
	</div>
</div>

<!-- Modal Edit -->
<div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Edit Product</h4>
			</div>
			<div class="modal-body">
				<form  action="admin/product/editProduct" method="POST">
					{{csrf_field()}}
					<div class="form-group">
						<div class="col-xs-10">
							<label class="control-label"><i class="fa fa-star" aria-hidden="true"></i>ID</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="text" class="form-control" id="edit_id" name="edit_id" readonly>
							</div>
						</div> 
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Product Name</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="text" class="form-control" id="edit_productName" name="edit_productName" required="">
							</div>
						</div>
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">		
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Category</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<select class="form-control input-width" name="edit_category">
									@foreach($categoryList as $cl)
									<option value="{{ $cl->id }}">{{ $cl->categoryName }}</option>
									@endforeach
								</select>
							</div>
						</div>
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Description</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="text" class="form-control" id="edit_description" name="edit_description" required="">
							</div>
						</div>
					</div>
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Price</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="number" class="form-control" id="edit_price" name="edit_price" value="0" required="">
							</div>
						</div>
					</div> 
					<div class="form-group"> 
						<div class="col-xs-10">
							<label class="control-label" ><i class="fa fa-star" aria-hidden="true"></i>Default Image</label>
							<div class="input-group col-sm-12">
								<span class="input-group-addon"></span>
								<input type="file" class="form-control" id="edit_defaultImage" name="edit_defaultImage">
							</div>
						</div>
					</div> 
					<div class="modal-footer">
						<button id="btnSubmitModel" type="submit" class="btn btn-info"><i class="fa fa-check"></i>Save</button>    
					</div>

				</form>
			</div>

		</div>
	</div>
</div>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
	<li class="breadcrumb-item">
		<a href="{!! url('admin/manageHome') !!}">Home</a>
	</li>
	<li class="breadcrumb-item active">
		<a href="{!! url('admin/product') !!}">Product</a>
	</li>
</ol>

<!-- DataTables -->
<div class="card mb-3">
	<div class="card-header">
		<button id="btnAdd" class="btn btn-info" data-toggle="modal" data-target="#modalNew">+ New</button>
		@if(count($errors) > 0)
		<div class="alert alert-danger">
			@foreach($errors->all() as $err)
			<strong>{{$err}}</strong><br/>
			@endforeach
		</div>
		@endif
		@if(session('message'))
		<div class="alert alert-success">
			<strong>{{ session('message') }}</strong>
		</div>
		@endif
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr align="center">
							<th>ID</th>
							<th>Image</th>  
							<th>Name</th>
							<th>Category</th>
							<th >Description</th>
							<th>Price</th>
							<th>Variants</th>
							<th>Delete</th>
							<th>Edit</th>

						</tr>
					</thead>
					<tbody>
						@foreach ($productList as $pl)
						<tr class="odd gradeX" align="center"> 
							<td> {{ $pl -> id }} </td>
							<td>
								<img width="80px" class="stretch" src="storage/product/{{$pl->defaultImage}}">
							</td> 
							<td> {{ $pl -> productName }} </td>
							
								<!-- @foreach($categoryList as $cl)
									@if($cl->id==$pl->categoryID)
									<td>{{ $cl -> categoryName }}</td> 
									@endif
								@endforeach -->

							<td>{{ $pl -> Categories->categoryName }}</td> 	
							<td style="max-width: 60px; text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;"> {{ $pl -> productDescript }}</td> 
							<td>{{$pl -> price }}</td>
							<td class="center" id="variant"  >
								<a href="admin/product/{{$pl->id}}">
									<label class="lable-detail" data-detail="1" style="color: #337AB7"><i><u>Details</u></i></label>
									<i class="fa fa-external-link fa-fw" style="color: #138496"></i>
								</td> 
								<td class="center" id="delete" >
									<i class="fa  fa-trash  fa-fw"   style="color: red"></i>
								</td>
								<td class="center" id="edit"  > 
									<i class="fa fa-pencil fa-fw "  style="color: #E8910D" ></i>
								</td>
							</tr> 
							@endforeach 
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-footer small text-muted"></div>
		</div>
	</div>

	@endsection

	<!-- script -->
	@section('script')
	{{csrf_field()}}
	<script>
		$(document).on('click','#edit',function() {
			var id = $(this).closest('tr').find('td:eq(0)').text();
			var name =$(this).closest('tr').find('td:eq(2)').text();
			var category =$(this).closest('tr').find('td:eq(3)').text();
			var description =$(this).closest('tr').find('td:eq(4)').text();
			var price =$(this).closest('tr').find('td:eq(5)').text();
			$('#edit_id').val(id);
			$('#edit_productName').val(name);
			$('#edit_category').val(category);
			$('#edit_description').val(description);
			$('#edit_price').val(price);
			$('#modalEdit').modal('show');
		}); 
	</script>
	<script >
		$(document).on('click','#delete',function() {
			var id = $(this).closest('tr').find('td:eq(0)').text();
			$('#delete_id').val(id);
			$('#modalDelete').modal('show');
		});
	</script>
	@endsection
