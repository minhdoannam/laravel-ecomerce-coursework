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

Route::get('/','homeController@index');

Route::get('detail/{id}', 'homeController@productDefaultDetail');

Route::get('/getVariants', ['uses' => 'VariantController@getValuesBySku']);
Route::get('/getSkuCode' , ['uses' => 'VariantController@getSkuByValues']);
Route::get('/getSkuCode/changeImage' , ['uses' => 'ImageController@changeImage']);