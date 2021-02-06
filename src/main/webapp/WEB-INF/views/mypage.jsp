<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
    	<link rel="icon" type="image/png" href="http://example.com/myicon.png">
        <title>Damoa :: My Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
  <style>
  	.col-lg-3{
  		margin-top:150px;
  		text-align:center;
  	}
  	.list-group{
  		margin-top:50px;
  	}
  </style>
    </head>

    <body>

		<!-- Navigation -->
		<jsp:include page="./include/header.jsp"></jsp:include>
<!-- ---------------------------------------------------------------------------------------------- -->

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <h1 class="my-4">My Page</h1>
        <div class="list-group">
      	  <a href="" class="list-group-item">Q & A</a>
          <a href="" class="list-group-item">장바구니</a>	
          <a href="" class="list-group-item">회원정보 수정</a>
          <a href="" class="list-group-item">회원 탈퇴</a>
        </div>
      </div>
    </div>
  </div>
  


<!-- ---------------------------------------------------------------------------------------------- -->



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
        <script src='<c:url value="/resources/main/assets/js/plugins.js"/>'></script>
        <script src='<c:url value="/resources/main/assets/js/main.js"/>'></script>

		
    </body>
</html>