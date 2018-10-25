<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>{{config('app.name')}}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Resturent, Bangla Resturent" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="{{asset('frontend/css/bootstrap.css')}}" rel='stylesheet' type='text/css' />
	<link href="{{asset('frontend/css/login_overlay.css')}}" rel='stylesheet' type='text/css' />
	<link href="{{asset('frontend/css/style6.css')}}" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="{{asset('frontend/css/shop.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('frontend/css/owl.carousel.css')}}" type="text/css" media="all">
	<link rel="stylesheet" href="{{asset('frontend/css/owl.theme.css')}}" type="text/css" media="all">
	<link rel="stylesheet" href="{{asset('frontend/css/easy-responsive-tabs.css')}}" type="text/css" media="all">
	<link rel="stylesheet" href="{{asset('frontend/css/flexslider.css')}}" type="text/css" media="all">
	<link rel="stylesheet" href="{{asset('frontend/css/contact.css')}}" type="text/css" media="all">
	<link rel="stylesheet" href="{{asset('frontend/css/checkout.css')}}" type="text/css" media="all">

	<link href="{{asset('frontend/css/style.css')}}" rel='stylesheet' type='text/css' />
	<link href="{{asset('frontend/css/fontawesome-all.css')}}" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

</head>

<body>
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
		<header>
			@include('frontend.partials._header')
		</header>
		<!-- //header -->
		<!-- banner -->
		@if(Request::is('/'))
		@include('frontend.partials._banner')
		@else
		<div class="banner_inner">
		    <div class="services-breadcrumb">
		        <div class="inner_breadcrumb">

		            <ul class="short">
		                <li>
		                    <a href="index.html">Home</a>
		                    <i>|</i>
		                </li>
		                <li>Single Page</li>
		            </ul>
		        </div>
		    </div>
		</div>
		@endif
		<!--//banner-sec-->
	</div>
	
	@yield('content')

	<!--footer -->
	<footer class="py-lg-5 py-3">
		<div class="container-fluid px-lg-5 px-3">
			<div class="copyright-w3layouts mt-4">
				<p class="copy-right text-center ">&copy; 2018 Goggles. All Rights Reserved | Design by
					<a href="http://w3layouts.com/"> W3layouts </a>
				</p>
			</div>
		</div>
	</footer>
	<!-- //footer -->

	<!--jQuery-->
	<script src="{{asset('frontend/js/jquery-2.2.3.min.js')}}"></script>
	

	<!--search jQuery-->
	<script src="{{asset('frontend/js/modernizr-2.6.2.min.js')}}"></script>
	<script src="{{asset('frontend/js/classie-search.js')}}"></script>
	<script src="{{asset('frontend/js/demo1-search.js')}}"></script>
	<!--//search jQuery-->
	<!-- cart-js -->

	<script>
		$(document).ready(function () {
			$(".button-log a").click(function () {
				$(".overlay-login").fadeToggle(200);
				$(this).toggleClass('btn-open').toggleClass('btn-close');
			});
		});
		$('.overlay-close1').on('click', function () {
			$(".overlay-login").fadeToggle(200);
			$(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
			open = false;
		});
	</script>
	<!-- carousel -->

	
	<div id="staplesbmincart">
	    <form method="post" action="#" target="">
	        <button type="button" class="sbmincart-closer">×</button>
	        <ul>
	        	@foreach(Cart::content() as $content)
	            <li class="sbmincart-item sbmincart-item-changed">
	            	<div class="sbmincart-details-remove">
	                    <button type="button" class="sbmincart-remove" data-sbmincart-idx="0"><i class="fa fa-times" aria-hidden="true" style="color: #ff4e00"></i></button>
	                </div>
	            	<div class="sbmincart-details-name"> {{$content->name}}
	                    <ul class="sbmincart-attributes"> </ul>
	                </div>
	                <div class="sbmincart-details-quantity">
	                	<input id="{{$content->rowId}}" class="sbmincart-quantity" data-sbmincart-idx="0" name="quantity_1" type="text" pattern="[0-9]*" value="{{$content->qty}}"> 
	                    
	                </div>
	                <div class="sbmincart-details-remove">
	                    <button type="button" class="sbmincart-remove" data-sbmincart-idx="0">
	                    	<i class="fa fa-retweet" aria-hidden="true" style="color: green"></i></button>
	                </div>	                
	                <div class="sbmincart-details-price"> <span class="sbmincart-price">৳{{$content->price}}</span> </div>
	                
	            </li>
	            @endforeach	            
	        </ul>

	        <div class="sbmincart-footer">
	            <div class="sbmincart-subtotal"> Subtotal: ৳{{Cart::subtotal()}} </div>
	            <a href="{{route('checkout.index')}}" class="sbmincart-submit">Check Out</a>
	        </div>
	        <input type="hidden" name="cmd" value="_cart">
	        <input type="hidden" name="upload" value="1">
	        <input type="hidden" name="bn" value="sbmincart_AddToCart_WPS_US"> </form>
	</div>

	<!-- //cart-js -->
	<script>
		$(document).ready(function () {
			$(".sbmincart-closer").click(function () {
				$("#staplesbmincart").fadeToggle(200);
			});


			$('.top_googles_cart').on('click', function () {
				$("#staplesbmincart").fadeToggle(200);
			});

		});

		function update(){
			alert("ok");
		}
		

		
	</script>
	<!-- carousel -->
	
	<script src="{{asset('frontend/js/owl.carousel.js')}}"></script>
	<script>
		$(document).ready(function () {
			$('.owl-carousel').owlCarousel({
				loop: true,
				margin: 10,
				responsiveClass: true,
				responsive: {
					0: {
						items: 1,
						nav: true
					},
					600: {
						items: 2,
						nav: false
					},
					900: {
						items: 3,
						nav: false
					},
					1000: {
						items: 4,
						nav: true,
						loop: false,
						margin: 20
					}
				}
			})
		})
	</script>

	<!-- //end-smooth-scrolling -->

	<!-- single -->
		<script src="{{asset('frontend/js/imagezoom.js')}}"></script>
		<!-- single -->
		<!-- script for responsive tabs -->
		<script src="{{asset('frontend/js/easy-responsive-tabs.js')}}"></script>
		<script>
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
					closed: 'accordion', // Start closed if in accordion view
					activate: function (event) { // Callback function if tab is switched
						var $tab = $(this);
						var $info = $('#tabInfo');
						var $name = $('span', $info);
						$name.text($tab.text());
						$info.show();
					}
				});
				$('#verticalTab').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true
				});
			});
		</script>


	<!-- FlexSlider -->
		<script src="{{asset('frontend/js/jquery.flexslider.js')}}"></script>
		<script>
			// Can also be used with $(document).ready()
			$(window).load(function () {
				$('.flexslider1').flexslider({
					animation: "slide",
					controlNav: "thumbnails"
				});
			});
		</script>
		<!-- //FlexSlider-->


	<!-- dropdown nav -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //dropdown nav -->


  <script src="{{asset('frontend/js/move-top.js')}}"></script>
    <script src="{{asset('frontend/js/easing.js')}}"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->

	<script src="{{asset('frontend/js/bootstrap.js')}}"></script>
	<!-- js file -->
</body>

</html>