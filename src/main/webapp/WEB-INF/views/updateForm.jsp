<%@page import="com.damoa.domain.MemberVO"%>
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
  form{
  	margin-top:250px;
  	margin-bottom:160px;
  	text-align:center;
  }
  input{
  	text-align:center;
  }
  </style>
    </head>

    <body>
		<!-- Navigation -->
		<jsp:include page="./include/header.jsp"></jsp:include>
<!-- ---------------------------------------------------------------------------------------------- -->
	<%String id = (String)session.getAttribute("id"); %>
	
  <!-- Page Content -->
	<form action="" method="post" id="fr">
            <input id="confirmTicket" name="confirmTicket" value="" type="hidden">
            <h1>회원정보 확인</h1>
                정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인 합니다.<br><br><br>
            <div>
			</div>
			<br>
			<div>
			</div>
			<br><br>
			<div class="home_btns m-top-40">
                <a href="" class="btn btn-primary m-top-20" >Buy Now</a>
                <a href="" class="btn btn-default m-top-20">Take a Tour</a>
                  </div>
        </form>
<!-- ---------------------------------------------------------------------------------------------- -->

		<!-- Footer -->
		<jsp:include page="./include/footer.jsp"></jsp:include>
		<!-- Footer -->
		
    </body>
</html>