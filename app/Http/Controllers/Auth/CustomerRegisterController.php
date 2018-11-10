<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CustomerRegistrationRequest;
use Sentinel;

class CustomerRegisterController extends Controller
{
	
   	public function create()
   	{
   		return view('frontend.pages.register');
   	}

   	public function store(CustomerRegistrationRequest $request)
   	{
   		$user = Sentinel::registerAndActivate($request->all());
   		if($role = Sentinel::findRoleBySlug('customer')){
   			$role->users()->attach($user);    
   			Sentinel::authenticate($request->all());   
   		}
        return redirect('/')->withSuccess('Success!');
   	}
}
