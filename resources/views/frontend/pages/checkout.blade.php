@extends('frontend.master')

@section('content')

<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
    <div class="container">
        <div class="inner-sec-shop px-lg-4 px-3">
            <h3 class="tittle-w3layouts my-lg-4 mt-3">Checkout </h3>
            <div class="checkout-right">
                <h4>Your shopping cart contains:
                        <span>{{Cart::count()}} Items</span>
                    </h4>
                <table class="timetable_sub">
                    <thead>
                        <tr>
                            <th></th>
                            <th style="width: 130px">Image</th>
                            <th>Name</th>
                            <th>Quantity</th>                            
                            <th style="text-align: right; padding-right: 5px;">Unit Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(Cart::count()>0)
                        @foreach(Cart::content() as $food)
                        <tr class="rem1">
                            <td>
                                <form method="post" action="{{url('remove-item')}}" style="display: inline;">
                                    {{csrf_field()}}

                                    <input type="hidden" name="rowId" value="{{$food->rowId}}">
                                    <button type="submit" class="btn" data-sbmincart-idx="0"><i class="fa fa-times" aria-hidden="true" style="color: #ff4e00"></i></button>
                                </form>                                
                            </td>
                            <td class="invert-image">
                                <a href="single.html">
                                    <img src="{{asset($food->options->image)}}" alt=" " class="img-responsive" style="height: 70px">
                                </a>
                            </td>
                            <td class="invert">{{$food->name}}</td>
                            <td>
                                {{$food->qty}} + 
                                <form method="post" action="{{url('cart-update')}}" style="display: inline;">
                                    {{csrf_field()}}

                                    <input class="form-control" type="number" name="qty" style=" width: 50px; display: inline; padding: 0px 2px; border-radius: 4px; text-align: center;" placeholder="2">
                                    <input type="hidden" name="rowId" value="{{$food->rowId}}">
                                    <button class="btn btn-sm" style="padding: 1px 8px">
                                        <i class="fa fa-retweet" aria-hidden="true" style="color: green;"></i>
                                    </button>
                                </form>
                            </td>

                            <td class="invert" style="text-align: right; padding-right: 5px;">৳ {{number_format($food->price,2)}}</td>                            
                        </tr> 
                        @endforeach
                        @else
                        <tr>
                            <td colspan="5" style="text-align: center;">
                                <h3 style="color: red">Your Cart is empty!</h3>
                                <a style="color: blue" href="{{url('menu')}}" class="nav-style"><i class="fa fa-shopping-cart"></i> Continue</a>
                            </td>
                        </tr>
                        @endif
                    </tbody>
                    @if(Cart::count()>0)
                    <tfoot>
                        <tr>
                            <td colspan="4" style="text-align: right;">
                                <strong>Subtotal: </strong>
                            </td>
                            <td style="text-align: right; padding-right: 5px;">
                                ৳ {{Cart::subtotal()}}
                            </td>
                        </tr>
                    </tfoot>
                    @endif
                </table>
            </div>
            @if(Cart::count()>0)
            <div class="checkout-left row">
                <div class="col-md-8 address_form" style="padding-left: 0px">
                    @if($user = Sentinel::check())
                        <form class="creditly-card-form agileinfo_form" action="{{route('orders.store')}}" method="post">
                        {{csrf_field()}}

                        <section class="creditly-wrapper wrapper">
                            <div class="information-wrapper">
                                
                                <div class="first-row form-group">                                    
                                    <div class="card_number_grids">
                                        <div class="card_number_grid_left">
                                            <div class="controls">
                                                <label class="control-label">Shipping Address -> Format : Road, House(Floor), Area, Post Code</label>
                                                <input class="form-control" type="text" name="s_address" placeholder="Shipping Address" value="{{$user->address}}" required>
                                            </div>
                                        </div>

                                        <div class="clear"> </div>
                                    </div>
                                </div>

                                <div class="first-row form-group">                                    
                                    <div class="card_number_grids">
                                        <div class="card_number_grid_left">
                                            <div class="controls">
                                                <label class="control-label">Notes</label>
                                                <input class="form-control" type="text" name="notes" placeholder="Your Notes">
                                            </div>
                                        </div>

                                        <div class="clear"> </div>
                                    </div>
                                </div>


                                <button type="submit" class="btn btn-default">Order Now</button>

                            </div>
                        </section>
                    </form>
                    @else
                    <ul class="cart-inner-info">
                        <li class="button-log" style="margin-left: 0px">
                            <a class="btn-open btn btn-default" href="#">
                                <span class="fa" aria-hidden="true"> Order Now</span>
                            </a>
                        </li>
                    </ul> 
                    @endif             

                </div>
                <div class="clearfix"> </div>
            </div>
            @endif

        </div>

    </div>
</section>
@endsection