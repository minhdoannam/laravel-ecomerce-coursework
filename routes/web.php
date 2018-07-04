<?php
/* Admin Route */

Route::get('admin/login','userController@Login');

Route::post('admin/login','userController@LoginAuth');

Route::get('admin/logout','userController@Logout');

Route::group(['prefix'=>'admin','middleware' => 'adminAuth'],function(){
	Route::get('/','manageHomeController@home');
	Route::get('manageHome','manageHomeController@home');
	Route::group(['prefix'=>'order'],function(){
		Route::get('/','manageOrderController@index');
		Route::post('shipper','manageOrderController@shipper');
		Route::post('payment','manageOrderController@payment');
		Route::post('cancelOrder', 'manageOrderController@cancelOrder');
		Route::get('/{id}','manageOrderController@orderLine');
	});
	Route::group(['prefix'=>'customer'],function(){
		Route::get('/','manageCustomerController@index');
		Route::post('newCustomer', 'manageCustomerController@addCustomer');
		Route::post('editCustomer','manageCustomerController@editCustomer');
		Route::post('deleteCustomer', 'manageCustomerController@deleteCustomer');
	});
	Route::group(['prefix'=>'product'],function(){
		Route::get('/','manageProductController@index');
		Route::post('newProduct', 'manageProductController@addProduct');
		Route::post('editProduct','manageProductController@editProduct');
		Route::post('deleteProduct', 'manageProductController@deleteProduct');
		Route::group(['prefix'=>'{id}'],function(){
			Route::get('/','manageProductController@variant');
			Route::post('new', 'manageProductController@addVariant');
			Route::post('edit','manageProductController@editVariant');
			Route::post('delete', 'manageProductController@deleteVariant');
		});
	});
	Route::group(['prefix'=>'setting'],function(){
		Route::get('/','manageHomeController@home');
		Route::group(['prefix'=>'productCategory'],function(){
			Route::get('/','manageProductCategoryController@index');
			Route::post('newCategory', 'manageProductCategoryController@addCategory');
			Route::post('editCategory','manageProductCategoryController@editCategory');
			Route::post('deleteCategory', 'manageProductCategoryController@deleteCategory');
		});
		Route::group(['prefix'=>'option'],function(){
			Route::get('/','manageOptionController@index');
			Route::post('newOption', 'manageOptionController@addOption');
			Route::post('editOption','manageOptionController@editOption');
			Route::post('deleteOption', 'manageOptionController@deleteOption');
			Route::group(['prefix'=>'{id}'],function(){
				Route::get('/','manageOptionController@optionValue');
				Route::post('new', 'manageOptionController@addValue');
				Route::post('edit','manageOptionController@editValue');
				Route::post('delete', 'manageOptionController@deleteValue');
			});
		});
		Route::group(['prefix'=>'city'],function(){
			Route::get('/','manageCityController@index');
			Route::post('newCity', 'manageCityController@addCity');
			Route::post('editCity','manageCityController@editCity');
			Route::post('deleteCity', 'manageCityController@deleteCity');
		});
		Route::group(['prefix'=>'shipper'],function(){
			Route::get('/','manageShipperController@index');
			Route::post('newShipper', 'manageShipperController@addShipper');
			Route::post('editShipper','manageShipperController@editShipper');
			Route::post('deleteShipper', 'manageShipperController@deleteShipper');
		});
		Route::group(['prefix'=>'payment'],function(){
			Route::get('/','managePaymentController@index');
			Route::post('newPayment', 'managePaymentController@addPayment');
			Route::post('editPayment','managePaymentController@editPayment');
			Route::post('deletePayment', 'managePaymentController@deletePayment');
		});
	});

	Route::get('revenue','revenueController@index');
});

/* Client Route */
Route::get('/','HomeController@index');

Route::get('/detail/{id}', 'HomeController@productDefaultDetail');
Route::get('/category/{id}', 'ProductController@getProducPageCategory');

Route::get('/getVariants', ['uses' => 'VariantController@getValuesBySku']);
Route::get('/getSkuCode' , ['uses' => 'VariantController@getSkuByValues']);
Route::get('/getSkuCode/changeImage' , ['uses' => 'ImageController@changeImage']);

Route::get('/cart/add/{sku}', ['as' => 'addCart', 'uses' => 'CartController@add']);
Route::get('/cart/remove/{rowID}',['as' => 'removeCart', 'uses' => 'CartController@remove']);
Route::get('/cart/update/{rowID}', ['as' => 'updateCart', 'uses' =>'CartController@update']);
Route::get('/cart/destroy',['as' => 'destroyCart', 'uses' =>'CartController@destroy']);
Route::get('/checkout','CartController@checkout');
Route::post('/order', ['as' => 'order' , 'uses' => 'OrderController@checkout']);

Route::get('/login', ['as' => 'login' , 'uses' => 'customerController@customerLogin']);
Route::post('/login', ['as' => 'login' , 'uses' =>'customerController@customerLoginAuth']);

Route::get('/logout', ['as'=> 'logut', 'uses' =>'customerController@customerLogout']);
Route::get('/signup', ['as' => 'signup' , 'uses' => 'customerController@customerSignUp'] );
Route::post('/signup', ['as' => 'signup' , 'uses' => 'customerController@customerSignUpNew'] );
Route::get('/forgot', ['as' => 'forgot' , 'uses' => 'customerController@customerForgot'] );
Route::get('/search', ['as' => 'search' , 'uses' => 'ProductController@searchProduct']);


