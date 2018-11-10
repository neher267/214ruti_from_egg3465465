@extends('frontend.master')

@section('content')
<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
    <div class="container">
        <div class="inner-sec-shop pt-lg-4 pt-3">
            <div class="row">
                <div class="col-lg-4 single-right-left ">
                    <div class="grid images_3_of_2">
                        <div class="flexslider1">

                            <ul class="slides">
                                @foreach($product->images()->get() as $image)
                                <li data-thumb="{{asset($image->src)}}">
                                    <div class="thumb-image"> <img src="{{asset($image->src)}}" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                                </li>
                                @endforeach
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                    <h3>{{$product->name}}</h3>
                    <p><span class="item_price">৳ {{number_format($product->price,2)}}</span>
                        <!-- <del>$1,199</del> -->
                    </p>
                    <div class="rating1">
                        <ul class="stars">
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    
                    <div class="color-quality">
                        <div class="color-quality-right">
                            <h5>Quality :</h5>
                            <form method="post" action="{{route('add-to-cart', $product)}}" style="display: inline;">
                                {{csrf_field()}}


                                <input class="form-control" type="number" name="qty" style=" width: 50px; display: inline; padding: 0px 2px; border-radius: 4px; text-align: center;" value="1"> 

                                <div class="occasion-cart">
                                    <div class="googles single-item singlepage">
                                        <button type="submit" class="googles-cart pgoogles-cart">
                                                Add to Cart
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>                    
                    
                    <!-- <ul class="footer-social text-left mt-lg-4 mt-3">
                        <li>Share On : </li>
                        <li class="mx-2">
                            <a href="#">
                                <span class="fab fa-facebook-f"></span>
                            </a>
                        </li>
                        <li class="mx-2">
                            <a href="#">
                                <span class="fab fa-twitter"></span>
                            </a>
                        </li>
                        <li class="mx-2">
                            <a href="#">
                                <span class="fab fa-google-plus-g"></span>
                            </a>
                        </li>
                        <li class="mx-2">
                            <a href="#">
                                <span class="fab fa-linkedin-in"></span>
                            </a>
                        </li>
                        <li class="mx-2">
                            <a href="#">
                                <span class="fas fa-rss"></span>
                            </a>
                        </li>

                    </ul> -->

                </div>
                <div class="clearfix"> </div>
                <!--/tabs-->
                <div class="responsive_tabs">
                    <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                            <li>Description</li>
                            <li>Reviews</li>
                            <li>Information</li>
                        </ul>
                        <div class="resp-tabs-container">
                            <!--/tab_one-->
                            <div class="tab1">

                                <div class="single_page" style="text-align: justify;">
                                    <h6>{{$product->name}}</h6>
                                    <div>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor.
                                    </div>
                                </div>
                            </div>
                            <!--//tab_one-->
                            <div class="tab2">

                                <div class="single_page">
                                    <div class="bootstrap-tab-text-grids">
                                        <div class="bootstrap-tab-text-grid">
                                            <div class="bootstrap-tab-text-grid-left">
                                                <img src="{{asset('frontend/images/team1.jpg')}}" alt=" " class="img-fluid">
                                            </div>
                                            <div class="bootstrap-tab-text-grid-right">
                                                <ul>
                                                    <li><a href="#">Admin</a></li>
                                                    <li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget.Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                        <div class="add-review">
                                            <h4>add a review</h4>
                                            <form action="#" method="post">
                                                <input class="form-control" type="text" name="Name" placeholder="Enter your email..." required="">
                                                <input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
                                                <textarea name="Message" required=""></textarea>
                                                <input type="submit" value="SEND">
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="tab3">

                                <div class="single_page" style="text-align: justify;">
                                    <h6>{{$product->name}}</h6>
                                    <div>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//tabs-->

            </div>
        </div>
    </div>
</section>
@endsection

