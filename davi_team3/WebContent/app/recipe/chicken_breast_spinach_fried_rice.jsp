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
<title>닭가슴살 시금치 볶음밥</title>
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
						닭가슴살 시금치 볶음밥
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 305kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						닭 가슴살은 고단백 식품으로 지방질이 적어 다이어트에 좋으며, 
						카레에 들어있는 강황에는 커큐민 성분이 들어있어 항암효과를 해주고 간의 기능을 강화시켜줘 해독작용 효과가 있다.
						</h3>
					</div>
					<div style="width:40%;">
						<!-- 식단 이미지  -->
						<img alt="" src="img/chicken_breast_spinach_fried_rice.png" style="max-width:100%; height:auto;">
					</div>
				</div>
				
				<div style="margin:10%; auto; text-align:center; display:flex; justify-content:space-between;">
					<div style="width:25%;">
							<i class="far fa-hand-point-down" style="font-size:2em;"></i>
							<!-- 준비시간 작성 -->
							<p style="margin-top:3%;">PREP : 10 MINS</p> 
					</div>
					<div style="width:25%;">
							<i class="far fa-clock" style="font-size:2em;"></i>
							<!-- 요리시간 작성  -->
							<p style="margin-top:3%;">COOK : 15 MINS</p> 
					</div>
					<div style="width:25%;">
							<i class="fas fa-user-friends" style="font-size:2em;"></i>
							<!-- 몇 인분인지 작성 -->
							<p style="margin-top:3%;">SERVES : 2</p> 
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
							<li>시금치 한줌</li>
							<li>닭 가슴살 1덩어리</li>
							<li>밥 2공기</li>
							<li>간장 1 큰 술</li>
							<li>다진 마늘 1 작은 술</li>
							<li>소금</li>
							<li>후추</li>
						</ul>
					</div>
					<div style="width:50%">
						<h3 style="color: #ffb642;">조리법</h3>
						<ol>
							<!-- 재료 하나씩 li에 작성 -->
							<li  class="recipe">닭 가슴살을 1.5센티 크기로 큐브 모양으로 잘라준 후 소금, 후추를 뿌리고 재워줍니다.</li>
							<li  class="recipe">시금치는 깨끗이 씻어준 후 3~4센티 크기로 쫑쫑 썰어줍니다.</li>
							<li  class="recipe">기름을 둘러준 팬에 닭 가슴살을 넣고 다진 마늘을 넣고 볶아줍니다.</li>
							<li  class="recipe">닭 가슴살이 하얗게 익어가면 시금치를 넣어준 후 소금 조금을 뿌려 간해주고 볶아줍니다.</li>
							<li  class="recipe">시금치 숨이 죽으면 밥을 넣고 간장 1 큰 술을 넣고 볶아줍니다.</li>
							<li  class="recipe">부족한 간은 소금을 뿌려 마지막 간을 맞춰줍니다.</li>
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