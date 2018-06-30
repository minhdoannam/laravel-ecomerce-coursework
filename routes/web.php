<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*
Route::get('/', function () {
    return view('pages.home');
});
*/

/*
Route::get('/', ['uses' => 'categoryController@getAllCategories']);
*/

Route::get('/','HomeController@index');

Route::get('detail/{id}', 'HomeController@productDefaultDetail');

Route::get('/getVariants', ['uses' => 'VariantController@getValuesBySku']);
Route::get('/getSkuCode' , ['uses' => 'VariantController@getSkuByValues']);
Route::get('/getSkuCode/changeImage' , ['uses' => 'ImageController@changeImage']);

Route::get('/cart/add/{sku}', ['as' => 'addCart', 'uses' => 'CartController@add']);
Route::get('/cart/remove/{rowID}',['as' => 'removeCart', 'uses' => 'CartController@remove']);
Route::get('/cart/update/{rowID}', ['as' => 'updateCart', 'uses' =>'CartController@update']);
Route::get('/cart/destroy',['as' => 'destroyCart', 'uses' =>'CartController@destroy']);
Route::get('/checkout','CartController@checkout');

