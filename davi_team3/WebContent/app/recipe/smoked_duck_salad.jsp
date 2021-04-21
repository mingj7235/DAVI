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
<title>훈제오리 샐러드</title>
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
						훈제오리 샐러드
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 150kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						오리고기는 불포화지방산이 매우 풍부합니다. 불포화지방산은 고혈압을 예방해주는 아주 좋은 지방입니다.
						</h3>
					</div>
					<div style="width:40%;">
						<!-- 식단 이미지  -->
						<img alt="" src="img/smoked_duck_salad.jpg" style="max-width:100%; height:auto;">
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
							<li>훈제오리 100g</li>
							<li>양상추</li>
							<li>파프리카</li>
							<li>양파 1/4개</li>
							<li>사과 1/4개</li>
							<li>연겨자 1스푼</li>
							<li>올리고당 2스푼</li>
							<li>레몬즙 1스푼</li>
							<li>소금 1/2스푼</li>
						</ul>
					</div>
					<div style="width:50%">
						<h3 style="color: #ffb642;">조리법</h3>
						<ol>
							<!-- 재료 하나씩 li에 작성 -->
							<li  class="recipe">훈제 오리는 뜨거운 물에 데쳐 줍니다.</li>
							<li  class="recipe">찬물로 헹궈서 기름기를 완전히 없애고 체에 밭쳐서 물기를 제거합니다.</li>
							<li  class="recipe">채소를 먹기 좋은 크기로 썰어 주고, 드레싱에 들어가는 사과와 양파는 다져 줍니다.</li>
							<li  class="recipe">양상추는 먹기 좋은 크기로 손으로 뜯어 줍니다. 물에 10분 정도 담가둔 뒤 먹기 전에 물기를 제거합니다.</li>
							<li  class="recipe">드레싱 재료를 섞어 줍니다.</li>
							<li  class="recipe">샐러드와 드레싱을 그릇에 담아 줍니다.</li>
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