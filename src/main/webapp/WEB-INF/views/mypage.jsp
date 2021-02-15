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
        <div class="list-group">
	    	
        </div>
      </div>
      <div class="col-lg-9">
      </div>
    </div>
  </div>
  		<div style="text-align:center;">
			<button onclick="location.href='/updateMember'" class="btn btn-secondary" style="width:400px; height:250px; font-size:50px; text-align: center; margin-right: 50px; margin-top: 220px; margin-bottom: 125px;"><b>회 원<br> 정보 수정</b></button>
			<button onclick="location.href='/admin/goodsList?num=1'" class="btn btn-secondary" style="width:400px; height:250px; font-size:50px; text-align: center; margin-right: 50px; margin-top: 220px; margin-bottom: 125px;"><b>장바구니</b></button>
			<button onclick="location.href='/admin/goodsList?num=1'" class="btn btn-secondary" style="width:400px; height:250px; font-size:50px; text-align: center; margin-right: 50px; margin-top: 220px; margin-bottom: 125px;"><b>문의하기</b></button>
			
 		</div>
<!-- ---------------------------------------------------------------------------------------------- -->

		<!-- Footer -->
		<jsp:include page="./include/footer.jsp"></jsp:include>
		<!-- Footer -->
		
    </body>
</html>