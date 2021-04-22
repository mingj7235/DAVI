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
		<title>다비 페이</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<style>
			.paymentMainBox {
				border : 1px solid #1290FF;
				border-left: none;
				border-right: none;
				margin : 1% 0;
				padding : 5% 3%;
				
			}
			
			.title_payment{
				font-size: 3rem;
				margin-bottom: 3%;
				text-align: center;
			}
		
		</style>
				
	</head>
	<body class="is-preload">
	<c:set var = "payList" value = "${payList}"></c:set>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<c:import url="/app/header/header.jsp" />
					

							<!-- Content -->
								<section>
									<div style="width: 60%; margin: 0 auto;">
										<div>
											<p class="title_payment">결제 내역 </p>
										</div>
									
									
									
										<c:forEach var="payment" items ="${payList}">
											<form action="${pageContext.request.contextPath}/app/dietary/payDetail.jsp">
												<div class = "paymentMainBox">
													<div>구매일자 : ${payment.getPayDate()}</div>
													<div>주문자 : ${payment.getMemberName()}</div>
													<div>상품명 : ${payment.getProduct()}</div>
													<div>상품 가격: ${payment.getPrice()}</div>
													<div>구매가 완료되었습니다. 이용해주셔서 감사합니다. 구매확정 이후 상품의 이용방법, 반품 등에 대한 문의는 판매자에게 문의해주세요.</div>
													<button type="submit">상세보기</button>	
													<input type="hidden" name ="payNum" value="${payment.getPayNum()}">
													<input type="hidden" name ="memberId" value="${payment.getMemberId()}">
													<input type="hidden" name ="memberName" value="${payment.getMemberName()}">
													<input type="hidden" name ="memberPhone" value="${payment.getMemberPhone()}">
													<input type="hidden" name ="memberEmail" value="${payment.getMemberEmail()}">
													<input type="hidden" name ="memberZipcode" value="${payment.getMemberZipcode()}">
													<input type="hidden" name ="memberAddress" value="${payment.getMemberAddress()}">
													<input type="hidden" name ="memberAddressDetail" value="${payment.getMemberAddressDetail()}">
													<input type="hidden" name ="payDate" value="${payment.getPayDate()}">
													<input type="hidden" name ="product" value="${payment.getProduct()}">
													<input type="hidden" name ="price" value="${payment.getPrice()}">
												</div>
											</form>
										</c:forEach>
		
									</div>
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