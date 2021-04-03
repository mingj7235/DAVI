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
<title>recipeDetails</title>
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
						새우 필라프
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 335kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						새우는 칼슘, 타우린 등이 풍부하게 들어있어 고혈압 예방과 성장발육에 우수한 식품입니다. 콜레스테롤 함량이 높은 편이지만 키토산이 함유되어있어 콜레스테롤을 낮추는 역할을 합니다.
						</h3>
					</div>
					<div style="width:40%;">
						<img alt="" src="img/shrimp_pilaf.png" style="max-width:100%; height:auto;">
					</div>
				</div>
				
				<div style="margin:10%; auto; text-align:center; display:flex; justify-content:space-between;">
					<div style="width:25%;">
							<i class="far fa-hand-point-down" style="font-size:2em;"></i>
							<p style="margin-top:3%;">PREP : 10 MINS</p> 
					</div>
					<div style="width:25%;">
							<i class="far fa-clock" style="font-size:2em;"></i>
							<p style="margin-top:3%;">COOK : 15 MINS</p> 
					</div>
					<div style="width:25%;">
							<i class="fas fa-user-friends" style="font-size:2em;"></i>
							<p style="margin-top:3%;">SERVES : 1</p> 
					</div>
					<div style="width:25%;">
							<i class="fas fa-bread-slice" style="font-size:2em;"></i>
							<p style="margin-top:3%;">DIFFICULTY : NORMAL</p> 
					</div>
							
				</div>
				
				<div style="display:flex; justify-content:space-between; margin:0 auto; padding:0 10%;">
					<div style="margin-right:6%;">
						<h3>재료</h3>
						<ul class="material" style="list-style-type:square;">
							<li>대파 (1/2개)</li>
							<li>양파 (1/2개)</li>
							<li>애호박 (1/2개)</li>
							<li>풋고추 (3개)</li>
							<li>마늘 (조금)</li>
							<li>새우</li>
							<li>간장 1 큰 술</li>
							<li>굴 소스 1 큰 술</li>
						</ul>
					</div>
					<div style="width:50%">
						<h3>조리법</h3>
						<ol class="recipe">
							<li> 양파와 대파를 썰어줍니다.</li>
							<li> 애호박은 십자썰기를 해줍니다.</li>
							<li> 풋고추는 미리 물에 깨끗이 씻어주고 속을 정리하고 양파와 비슷한 크기로 썰어줍니다.</li>
							<li> 팬에 기름을 조금 두르고 대파와 마늘을 넣고 볶아줍니다.</li>
							<li> 마늘과 파의 향이 올라오고 색이 변하기 시작하면 양파를 넣고 같이 볶아줍니다.</li>
							<li> 양파의 색이 투명해질 때쯤, 호박과 고추를 넣고 같이 볶아줍니다.</li>
							<li> 밥을 한쪽 면으로 밀어주신 뒤 팬의 바닥면에 간장 1 큰 술을 넣고 간장을 살짝 태워줍니다.</li>
							<li> 올리고당 1 큰 술을 넣고 볶아주시면 완성입니다.</li>
						</ol>
					</div>
				</div>
				
				</div>
				<!-- footer -->
				<div>
					<c:import url="/app/footer/footer_test.jsp"/>
				</div>
			</div>
				
				
		</div>
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