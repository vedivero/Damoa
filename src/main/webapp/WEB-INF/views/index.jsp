<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>No.1 컴퓨터 쇼핑몰</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">

        <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->

		<!-- Navigation -->
		<jsp:include page="./include/header.jsp"></jsp:include>


            <!--Home Sections-->

            <section id="home" class="home bg-black fix">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="col-md-12">
                                <div class="hello_slid">
                                    <div class="slid_item">
                                        <div class="home_text ">
                                            <h2 class="text-white">Welcome to <strong>Made</strong></h2>
                                            <h1 class="text-white">We Do Business All Of Time</h1>
                                            <h3 class="text-white">- We Create a <strong>Concept</strong> into The Market -</h3>
                                        </div>

                                        <div class="home_btns m-top-40">
                                            <a href="" class="btn btn-primary m-top-20">Buy Now</a>
                                            <a href="" class="btn btn-default m-top-20">Take a Tour</a>
                                        </div>
                                    </div><!-- End off slid item -->
                                    <div class="slid_item">
                                        <div class="home_text ">
                                            <h2 class="text-white">Welcome to <strong>Made</strong></h2>
                                            <h1 class="text-white">We Do Business All Of Time</h1>
                                            <h3 class="text-white">- We Create a <strong>Concept</strong> into The Market -</h3>
                                        </div>

                                        <div class="home_btns m-top-40">
                                            <a href="" class="btn btn-primary m-top-20">Buy Now</a>
                                            <a href="" class="btn btn-default m-top-20">Take a Tour</a>
                                        </div>
                                    </div><!-- End off slid item -->
                                    <div class="slid_item">
                                        <div class="home_text ">
                                            <h2 class="text-white">Welcome to <strong>Made</strong></h2>
                                            <h1 class="text-white">We Do Business All Of Time</h1>
                                            <h3 class="text-white">- We Create a <strong>Concept</strong> into The Market -</h3>
                                        </div>

                                        <div class="home_btns m-top-40">
                                            <a href="" class="btn btn-primary m-top-20">Buy Now</a>
                                            <a href="" class="btn btn-default m-top-20">Take a Tour</a>
                                        </div>
                                    </div><!-- End off slid item -->
                                </div>
                            </div>

                        </div>


                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->



            <!--Featured Section-->
            <section id="features" class="features">
                <div class="container">
                    <div class="row">
                        <div class="main_features fix roomy-70">
                            <div class="col-md-4">
                                <div class="features_item sm-m-top-30">
                                    <div class="f_item_icon">
                                        <i class="fa fa-thumbs-o-up"></i>
                                    </div>
                                    <div class="f_item_text">
                                        <h3>Best Quality Design</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque eleifend
                                            in sit amet mattis volutpat rhoncus.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="features_item sm-m-top-30">
                                    <div class="f_item_icon">
                                        <i class="fa fa-tablet"></i>
                                    </div>
                                    <div class="f_item_text">
                                        <h3>Responsive Design</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque eleifend
                                            in sit amet mattis volutpat rhoncus.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="features_item sm-m-top-30">
                                    <div class="f_item_icon">
                                        <i class="fa fa-sliders"></i>
                                    </div>
                                    <div class="f_item_text">
                                        <h3>Easy to Customize</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque eleifend
                                            in sit amet mattis volutpat rhoncus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Featured Section-->




            <!--product section-->
            <section id="product" class="product">
                <div class="container">
                    <div class="main_product roomy-80">
                        <div class="head_title text-center fix">
                            <h2 class="text-uppercase">What Client Say</h2>
                            <h5>Clean and Modern design is our best specialist</h5>
                        </div>

                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${pageContext.request.contextPath}/resources/main/assets/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${pageContext.request.contextPath}/resources/main/assets/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span>
                            </a>

                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <i class="fa fa-angle-right" aria-hidden="true"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Product section -->

		<!-- Footer -->
		<jsp:include page="./include/footer.jsp"></jsp:include>
		<!-- Footer -->

        <!-- JS includes -->

        <script src='<c:url value="/resources/main/assets/js/vendor/jquery-1.11.2.min.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/vendor/bootstrap.min.js"/>'></script>

        <script src='<c:url value="/resources/main/assets/js/owl.carousel.min.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/jquery.magnific-popup.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/jquery.easing.1.3.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/css/slick/slick.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/css/slick/slick.min.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/jquery.collapse.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/bootsnav.js"/>'></script>
        <script src='<c:url value="resources/main/assets/js/plugins.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/main.js"/>'></script>

    </body>
</html>
