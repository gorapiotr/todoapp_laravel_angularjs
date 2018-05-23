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

Route::get('/', function () {
    return view('welcome');
});


Route::get('/todo', function() {
    return view('index');
});


///TODO
///GET ALL TODOS IN DATABASE
Route::post('/getToDo', 'ToDoController@getToDo');
///ADD NEW TODO TO DATABASE
Route::post('/addToDo', 'ToDoController@addToDo');
///REMOVE TODO FROM DATABASE
Route::post('/removeToDo','ToDoController@removeToDo');
//ARCHIVE TODO 
Route::post('/archiveToDo','ToDoController@archiveToDo');
//EDIT TODO
Route::post('/editToDo','ToDoController@editToDo');


///USER
///GET ALL USERS 
Route::post('/getUsers', 'UserController@getUsers');
///GET USER BY ID
Route::post('/getUserById', 'UserController@getUserById');


///COMMENT
/// FIND ALL COMMENTS BY USER
Route::post('/getUserComments', 'CommentController@getUserComments');
/// EDIT COMMENT
Route::post('/updateComment', 'CommentController@updateComment');
/// ADD NEW COMMENT
Route::post('/addComment', 'CommentController@addComment');
///REMOVE COMMENT
Route::post('/removeComment', 'CommentController@removeComment');


///PRODUCT
/// GET ALL PRODUCTS
Route::post('/getProductList', 'ProductController@getProductList');
///GET USER PRODUCTS
Route::post('/getUserProductList', 'ProductController@getUserProductList');
///ADD NEW PRODUCT
Route::post('/addNewProduct', 'ProductController@addNewProduct');




