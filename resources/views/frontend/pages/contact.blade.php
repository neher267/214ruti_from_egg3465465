@extends('frontend.master')

@section('content')
<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
    <div class="container">
        <h3 class="tittle-w3layouts text-center my-lg-4 my-4">Contact</h3>
        <div class="inner_sec">
            <p class="sub text-center mb-lg-5 mb-3">We love to discuss your idea</p>
            <div class="address row">

                <div class="col-lg-4 address-grid">
                    <div class="row address-info">
                        <div class="col-md-3 address-left text-center">
                            <i class="far fa-map"></i>
                        </div>
                        <div class="col-md-9 address-right text-left">
                            <h6>Address</h6>
                            <p>{{config('settings.address')}}</p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 address-grid">
                    <div class="row address-info">
                        <div class="col-md-3 address-left text-center">
                            <i class="far fa-envelope"></i>
                        </div>
                        <div class="col-md-9 address-right text-left">
                            <h6>Email</h6>
                            <p>Email :
                                <a href="mailto:{{config('settings.email')}}">{{config('settings.email')}}</a>

                            </p>
                        </div>

                    </div>
                </div>
                <div class="col-lg-4 address-grid">
                    <div class="row address-info">
                        <div class="col-md-3 address-left text-center">
                            <i class="fas fa-mobile-alt"></i>
                        </div>
                        <div class="col-md-9 address-right text-left">
                            <h6>Phone</h6>
                            <p>{{config('settings.mobile')}}</p>

                        </div>

                    </div>
                </div>
            </div>
            <div class="contact_grid_right">
                <form action="#" method="post">
                    <div class="row contact_left_grid">
                        <div class="col-md-6 con-left">
                            <div class="form-group">
                                <label class="my-2">Name</label>
                                <input class="form-control" type="text" name="Name" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" type="email" name="Email" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label class="my-2">Subject</label>
                                <input class="form-control" type="text" name="Subject" placeholder="" required="">
                            </div>
                        </div>
                        <div class="col-md-6 con-right">
                            <div class="form-group">
                                <label>Message</label>
                                <textarea id="textarea" placeholder="" required=""></textarea>
                            </div>
                            <input class="form-control" type="submit" value="Submit">

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection