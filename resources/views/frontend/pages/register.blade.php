@extends('frontend.master')

@section('content')

<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-sm-12">
            	<h3 class="tittle-w3layouts my-lg-4 mt-3">Create Account</h3>
	            <form class="creditly-card-form agileinfo_form" action="{{url('signup')}}" method="post">
	                {{csrf_field()}}

	                <section class="creditly-wrapper wrapper">
	                    <div class="information-wrapper">                        
	                        <div class="first-row form-group">                                    
	                            <div class="card_number_grids">
	                                <div class="card_number_grid_left">
	                                    <div class="controls">
	                                        <label class="control-label">Name</label>
	                                        <input class="form-control" type="text" name="name" required>
	                                    </div>
	                                </div>

	                                <div class="clear"> </div>
	                            </div>
	                        </div>

	                        <div class="first-row form-group">                                    
	                            <div class="card_number_grids">
	                                <div class="card_number_grid_left">
	                                    <div class="controls">
	                                        <label class="control-label">Mobile No</label>
	                                        <input class="form-control" type="number" name="mobile" required>
	                                    </div>
	                                </div>

	                                <div class="clear"> </div>
	                            </div>
	                        </div>

	                        <div class="first-row form-group">                                    
	                            <div class="card_number_grids">
	                                <div class="card_number_grid_left">
	                                    <div class="controls">
	                                        <label class="control-label">Shipping Address -> Format : Road, House(Floor), Area, Post Code</label>
	                                        <input class="form-control" type="text" name="address" placeholder="Ex: 120 Dilu Road, Moghbazar" required>
	                                    </div>
	                                </div>

	                                <div class="clear"> </div>
	                            </div>
	                        </div>    

	                        <div class="first-row form-group">                                    
	                            <div class="card_number_grids">
	                                <div class="card_number_grid_left">
	                                    <div class="controls">
	                                        <label class="control-label">Password</label>
	                                        <input class="form-control" type="password" name="password" required>
	                                    </div>
	                                </div>

	                                <div class="clear"> </div>
	                            </div>
	                        </div>   

	                        <div class="first-row form-group">                                    
	                            <div class="card_number_grids">
	                                <div class="card_number_grid_left">
	                                    <div class="controls">
	                                        <label class="control-label">Repeat Password</label>
	                                        <input class="form-control" type="password" name="password_confirmation" required>
	                                    </div>
	                                </div>

	                                <div class="clear"> </div>
	                            </div>
	                        </div>	                                          

	                        <button type="submit" class="btn btn-default">Signup</button>
	                    </div>
	                </section>
	            </form>
            </div>
        </div>
    </div>
</section>
@endsection