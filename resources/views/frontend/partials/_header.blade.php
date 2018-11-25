<div class="row">
    <div class="col-md-3 top-info text-left mt-lg-4">
        <h6>Need Help</h6>
        <ul>
            <li>
                <i class="fas fa-phone"></i> Call</li>
            <li class="number-phone mt-3">{{config('settings.mobile')}}</li>
        </ul>
    </div>
    <div class="col-md-6 logo-w3layouts text-center">
        <h1 class="logo-w3layouts">
			<a class="navbar-brand" href="{{url('/')}}">{{config('app.name')}}</a>
		</h1>
    </div>

    <div class="col-md-3 top-info-cart text-right mt-lg-4">
        <ul class="cart-inner-info">           

            @if($user = Sentinel::check())                
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
                    <span class="fa fa-user" aria-hidden="true"> <span class="caret"></span>
                </a>

                <ul class="dropdown-menu">
                    <li>
                        <a href="{{url('logout')}}"
                            onclick="event.preventDefault();
                                     document.getElementById('logout-form').submit();">
                            Logout
                        </a>

                        <form id="logout-form" action="{{url('logout')}}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </li>
                </ul>
            </li>
            @else
                
            <li class="button-log">
                <a class="btn-open" href="#">
                    <span class="fa fa-user" aria-hidden="true"></i></span>
                </a>                
            </li>
            @endif 

            <li class="galssescart galssescart2 cart cart box_1">
                <form action="#" method="post" class="last">
                    <input type="hidden" name="cmd" value="_cart">
                    <input type="hidden" name="display" value="1">
                    <button class="top_googles_cart" type="button">
                        <span id="total_items" style="color: red">{{ Cart::count() }}</span> Items
                        <i class="fas fa-cart-arrow-down"></i>                        
                    </button>                    
                </form>                
            </li>           
        </ul>

        
        <!---->
        <div class="overlay-login text-left">
            <button type="button" class="overlay-close1">
                <i class="fa fa-times" aria-hidden="true"></i>
            </button>
            <div class="wrap">
                <h5 class="text-center mb-4">Login Now</h5>
                <div class="login p-5 bg-dark mx-auto mw-100">
                    <form action="{{url('login')}}" method="post">
                        {{ csrf_field() }}

                        <div class="form-group">
                            <label class="mb-2">Mobile No</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="" name="mobile">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your mobile no with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label class="mb-2">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="" name="password">
                        </div>
                        <div class="form-group">
                            <label class="" for="exampleCheck1">Not a account? 
                                <a href="{{url('signup')}}">Create Account</a>
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary submit mb-4">Sign In</button>

                    </form>
                </div>
                <!---->
            </div>
        </div>
        <!---->
    </div>
</div>

<label class="top-log mx-auto"></label>

<!-- nav -->
@include('frontend.partials.header._nav')
<!-- end nav -->