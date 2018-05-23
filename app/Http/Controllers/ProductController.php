<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\User;

class ProductController extends Controller
{
    public function getProductList(){
        return Product::all();
    }

    public function getUserProductList(Request $request){
        return User::find($request->id)->products;
    }

    public function addNewProduct(Request $request){

        $product = new Product();
        $product->name = $request->name;
        $product->category = $request->category;
        $product->price = $request->price;
        $product->description = $request->description;
        $product->amount = $request->amount;
        $product->save();

        return "Add new product";
    }

}
