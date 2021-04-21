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
<title>콘에그 샐러드</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>

.material{
	line-height: 300%;
	font-size:1.0rem;
	color:#3d4449;
}

.recipe{
	line-height: 250%;
	font-size:1.3rem;
	border-bottom: 1px solid #e3e4e6;
	color:#3d4449;
}


</style>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<c:import url="/app/header/header.jsp" />
				
				<!--레시피-->
				<div style="width:70%; margin:10% auto;">
				<div style="display:flex; justify-content:space-between; align-items:center;margin:3% auto; padding:0 10%;">
					<div style="width:40%; margin-right:6%;">
						<h3 style="color: #ffb642;">
						RECIPE:
						</h3>
						<h2 style="color:#ff5a00;">
						콘에그 샐러드
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 85kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						계란 다이어트의 장점으로 체중의 빠른 감량은 물론 혈당 조절을 개선하고 시력을 보호하며 뼈·머리카락·손톱을 튼튼하게 하는 영양분을 공급한다는 것이 거론됐다.
						</h3>
					</div>
					<div style="width:40%;">
						<!-- 식단 이미지  -->
						<img alt="" src="img/corn_egg_salad.png" style="max-width:100%; height:auto;">
					</div>
				</div>
				
				<div style="margin:10%; auto; text-align:center; display:flex; justify-content:space-between;">
					<div style="width:25%;">
							<i class="far fa-hand-point-down" style="font-size:2em;"></i>
							<!-- 준비시간 작성 -->
							<p style="margin-top:3%;">PREP : 15 MINS</p> 
					</div>
					<div style="width:25%;">
							<i class="far fa-clock" style="font-size:2em;"></i>
							<!-- 요리시간 작성  -->
							<p style="margin-top:3%;">COOK : 10 MINS</p> 
					</div>
					<div style="width:25%;">
							<i class="fas fa-user-friends" style="font-size:2em;"></i>
							<!-- 몇 인분인지 작성 -->
							<p style="margin-top:3%;">SERVES : 1</p> 
					</div>
					<div style="width:25%;">
							<i class="fas fa-bread-slice" style="font-size:2em;"></i>
							<!-- 난이도 EASY/NORMAL/HARD -->
							<p style="margin-top:3%;">DIFFICULTY : EASY</p> 
					</div>
							
				</div>
				
				<div style="display:flex; justify-content:space-between; margin:0 auto; padding:0 10%;">
					<div style="margin-right:6%;">
						<h3 style="color: #ffb642;">재료</h3>
						<ul class="material" style="list-style-type:square;">
							<!-- 재료 하나씩 li에 작성 -->
							<li>계란2개</li>
							<li>양파1/4개</li>
							<li>샐러드 채소 약간</li>
							<li>파프리카 1/4개</li>
							<li>옥수수콘 약간</li>
							<li>드레싱 소스 </li>
						</ul>
					</div>
					<div style="width:50%">
						<h3 style="color: #ffb642;">조리법</h3>
						<ol>
							<!-- 재료 하나씩 li에 작성 -->
							<li  class="recipe">파프리카 양파 샐러드 채소를 깨끗이 씻어줍니다.</li>
							<li  class="recipe">볼에 옥수수 콘 삶은 계란을 올려줍니다.</li>
							<li  class="recipe">그 후에 볼에 드레싱 소스를 뿌리면 완성입니다.</li>
						</ol>
					</div>
				</div>
				
				</div>
				<!-- footer -->
				<div>
					<c:import url="/app/footer/footer.jsp"/>
				</div>
			</div>
				
		</div>
				<c:import url="/app/footer/sidebar.jsp" />
	</div>

	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>