<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Sentinel;

class SentinelLoginController extends Controller
{

    public function login()
    {
        return view('auth.login');
    }

    public function post_login(Request $request)
    {
        //dd($request->all());
        Sentinel::authenticate($request->all());
    	if(Sentinel::check())
    	{
            return redirect('/dashboard');
    	}
    	else
    		return redirect()->back();
    }

    public function logout()
    {
        Sentinel::logout(null, true);
        return redirect('/');
    }
}
