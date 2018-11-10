<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AjaxRequestController extends Controller
{
    public function cart(Request $request)
    {
    	$rowId = $request->rowid;     
        $qty = (int) Cart::get($rowId)->qty + 1;   
        $price = (int) Cart::get($rowId)->price * $qty; 
        Cart::update($rowId, $qty);
        $subtotal = Cart::subtotal();
        $count = Cart::count();
        return ['qty'=>$qty, 'price'=> $price, 'count'=>$this->count, 'subtotal'=>$subtotal ];
    }

    protected function increate(Request $request)
    {
        $rowId = $request->rowid;     
        $qty = (int) Cart::get($rowId)->qty + 1;   
        $price = (int) Cart::get($rowId)->price * $qty; 
        Cart::update($rowId, $qty);
        return ['qty'=>$qty, 'price'=> $price, 'count'=>$this->count, 'subtotal'=>$this->subtotal];
    }

    protected function decrease(Request $request)
    {
        $rowId = $request->rowid;     
        $qty = (int) Cart::get($rowId)->qty -1;
        $price = (int) Cart::get($rowId)->price * $qty; 
        Cart::update($rowId, $qty);
        return ['qty'=>$qty, 'price'=> $price, 'count'=>$this->count, 'subtotal'=>$this->subtotal];
    }    

    protected function remove($id)
    {
        Cart::remove($id);
        return ['count'=>$this->count, 'subtotal'=>$this->subtotal];
    } 
}
