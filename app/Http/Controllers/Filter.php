<?php 

namespace App\Http\Controllers;

use App\Models\Hr\Product;

trait Filter{
	public function filter()
	{
		$keys = ['popular', 'new', 'low', 'high'];
		
		if (in_array(request('filter'), $keys)) {
			switch (request('filter')) {
				case 'popular':
					return Product::orderBy('hit_count', 'dsc')->get();
					break;
				case 'new':
					return Product::latest()->get();
					break;
				case 'low':
					return Product::orderBy('price', 'asc')->get();
					break;
				case 'high':
					return Product::orderBy('name', 'dsc')->get();
					break;
			}
		}
		else{
			return Product::orderBy('name', 'asc')->get();
		}
	}
}