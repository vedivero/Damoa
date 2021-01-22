<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/slick/slick.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/iconfont.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/bootsnav.css">
        
        <!--Theme custom css -->
        <link rel="stylesheet" href='<c:url value="resources/main/assets/css/style.css"/>'>
        <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="<c:url value='resources/main/assets/css/responsive.css'/>">

        <script src="<c:url value='/resources/main/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js'/>"></script>
</head>
<body>

        <div class="culmn">
			<!--Home page style -->

            <nav class="navbar navbar-default bootsnav navbar-fixed">
                <div class="navbar-top bg-grey fix">
                    <div class="container">
                        <div class="row">
                        
                            <div class="col-md-6">
                                <div class="navbar-callus text-left sm-text-center">
                                    <ul class="list-inline">
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="navbar-socail text-right sm-text-center">
                                    <ul class="list-inline">
                                        <li><a href="">로그인</a></li>
                                        <li><a href="/member/joinForm">회원가입</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

				<!--Start Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                    </div>
                </div>
				<!--End Top Search -->


                <div class="container"> 
                    <div class="attr-nav">
                        <ul>
                            <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        </ul>
                    </div> 

					<!--Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="#brand">
                            <img src="<c:url value='/resources/main/assets/images/logo.png" class="logo" alt=""'/>">
                            <img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">
                        </a>
                    </div>
					<!--End Header Navigation -->
					<!--navbar menu -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#home">Home</a></li>                    
                            <li><a href="#features">PC견적</a></li>
                            <li><a href="#test">중고장터</a></li>
                            <li><a href="#contact">고객센터</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div> 
            </nav>
            </div>
</body>
</html>