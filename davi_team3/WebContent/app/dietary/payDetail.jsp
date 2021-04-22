<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE HTML>
<!--
	Editorial by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>기본 프레임</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />		
		<style>
		
		.textTitle {
			display: flex;
			justify-content: space-between;
			margin-bottom:5%; 
			margin-top:5%;
			font-size: 1.1em;			
		
		}
		
		.textMain {
			display: flex;
			justify-content: space-between;
			color: #7F888F;
			font-size: 0.9em;
		}
		
		.textMainBox {
			margin: 0 4%;
		}
		
		
		</style>
		
		
				
	</head>
	<body class="is-preload">
	
	<c:set var="payNum" value ="${param.payNum}"></c:set>
	<c:set var="memberId" value="${param.memberId}"></c:set>
	<c:set var="memberName" value="${param.memberName}"></c:set>
	<c:set var="memberPhone" value="${param.memberPhone}"></c:set>
	<c:set var="memberEmail" value="${param.memberEmail}"></c:set>
	<c:set var="memberZipcode" value="${param.memberZipcode}"></c:set>
	<c:set var="memberAddress" value="${param.memberAddress}"></c:set>
	<c:set var="memberAddressDetail" value="${param.memberAddressDetail}"></c:set>
	<c:set var="payDate" value="${param.payDate}"></c:set>
	<c:set var="product" value="${param.product}"></c:set>
	<c:set var="price" value="${param.price}"></c:set>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<c:import url="/app/header/header.jsp" />
					

							<!-- Content -->
								<section style="margin-top: -4%;">
								<form>
								<div style="width:80%; margin:0 auto; margin-bottom:4%;">
									<h3>주문/결제 금액 정보</h3>
									<hr style="margin:0 auto;">
									<div style="display:flex; justify-content:space-between;">
										<div style="width:25%; height:250px; border-right:solid 1px rgba(210, 215, 217, 0.75);">
											<div class="textTitle">
												<span>주문금액</span>
											</div>
											<div class="textMainBox">
												<div class="textMain">
													<span>상품금액</span> 
													<span>${price}원</span> 
												</div>
												<div class="textMain">
													<span>쿠폰할인</span> 
													<span>0원</span> 
												</div>
												<div class="textMain">
													<span>배송비</span> 
													<span>0원</span> 
												</div>
												<div class="textMain">
													<span>주문금액</span> 
													<span>${price}원</span> 
												</div>
											</div>
										</div>
										<div style="width:25%; height:250px; ">
											<div style="margin-bottom:5%; margin-top:5%;">결제상세</div>
										</div>
										<div style="width:40%; height:250px; background-color: #1290ff " >
											<div class="textTitle" style="margin-bottom:5%; margin-top:5%;color:white">결제상세</div>
											<div style="color:white">상품금액</div>
											<div style="color:white">배송비</div>
										</div>
									</div>
									<!-- <div style="display:flex; justify-content:space-between;">
										<div style="width:25%; height:500px; border-right:solid 1px rgba(210, 215, 217, 0.75);">
											<div style="margin-bottom:5%; margin-top:5%;">주문금액</div>
											<div>상품금액</div>
											<div>배송비</div>
											<div>주문금액</div>
										</div>
										<div style="width:25%; height:500px; ">
											<div style="margin-bottom:5%; margin-top:5%;">결제상세</div>
											<div>상품금액</div>
											<div>배송비</div>
										</div>
										<div style="width:40%; height:500px; background-color: #1290ff " >											
										</div>
									</div>
 -->								</div>
								<div style="width:80%;margin: auto; ">
									<h3>배송지 정보</h3>
									<hr>
									<div style="display:flex; justify-content:space-between;">
									</div>
								</div>
								</form>								
								
								</section>
								
							<div>
							<!-- Footer -->
								<c:import url="/app/footer/footer.jsp"/>
							</div>
							
						</div>
					</div>

				<!-- Sidebar -->
					<c:import url="/app/footer/sidebar.jsp" />

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	</body>
	
	
</html>