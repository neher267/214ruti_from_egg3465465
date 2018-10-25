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
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="rem1">
                            <td>
                                <button type="button" class="btn" data-sbmincart-idx="0"><i class="fa fa-times" aria-hidden="true" style="color: #ff4e00"></i></button>
                            </td>
                            <td class="invert-image">
                                <a href="single.html">
                                    <img src="images/s1.jpg" alt=" " class="img-responsive" style="height: 70px">
                                </a>
                            </td>
                            <td class="invert">
                                Name
                            </td>
                            <td>
                                <form method="post" action="{{url('cart-update')}}" style="display: inline;">
                                    {{csrf_field()}}

                                    <input class="form-control" type="number" name="qty" style=" width: 50px; display: inline; padding: 0px 2px; border-radius: 4px">
                                    <input type="hidden" name="rowId" value="">
                                    <button class="btn btn-sm" style="padding: 1px 8px">
                                        <i class="fa fa-retweet" aria-hidden="true" style="color: green;"></i>
                                    </button>
                                </form>
                            </td>

                            <td class="invert">$281.00</td>                            
                        </tr>                       

                    </tbody>
                </table>
            </div>
            <div class="checkout-left row">
                
                <div class="col-md-6 address_form">
                    <h4>Place an Order</h4>
                    <form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
                        <section class="creditly-wrapper wrapper">
                            <div class="information-wrapper">
                                <div class="first-row form-group">
                                    <div class="controls">
                                        <label class="control-label">Full name: </label>
                                        <input class="billing-address-name form-control" type="text" name="name" placeholder="Full name">
                                    </div>
                                    <div class="card_number_grids">
                                        <div class="card_number_grid_left">
                                            <div class="controls">
                                                <label class="control-label">Mobile number:</label>
                                                <input class="form-control" type="text" placeholder="Mobile number">
                                            </div>
                                        </div>
                                        <div class="card_number_grid_right">
                                            <div class="controls">
                                                <label class="control-label">Address </label>
                                                <input class="form-control" type="text" placeholder="Address">
                                            </div>
                                        </div>
                                        <div class="card_number_grid_right">
                                            <div class="controls">
                                                <label class="control-label">Payment Method: <i class="far fa-check-circle"></i> Cash on Delivary</label>
                                            </div>
                                        </div>
                                        <div class="clear"> </div>
                                    </div>
                                </div>
                                <button class="submit check_out">Place Order</button>

                            </div>
                        </section>
                    </form>                    
                </div>

                <div class="clearfix"> </div>

            </div>

        </div>

    </div>
</section>
@endsection