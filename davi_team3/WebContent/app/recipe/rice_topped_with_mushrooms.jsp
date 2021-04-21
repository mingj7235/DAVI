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
<title>버섯 덮밥</title>
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
						버섯 덮밥
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 320kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						버섯은 포만감을 높이고 변비를 막아주는 식이섬유가 풍부하다.
						</h3>
					</div>
					<div style="width:40%;">
						<!-- 식단 이미지  -->
						<img alt="" src="img/rice_topped_with_mushrooms.png" style="max-width:100%; height:auto;">
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
							<li>표고버섯</li>
							<li>새송이버섯</li>
							<li>양파</li>
							<li>다진마늘</li>
							<li>간장 3스푼</li>
							<li>굴소스 1스푼</li>
							<li>설탕 1스푼</li>
						</ul>
					</div>
					<div style="width:50%">
						<h3 style="color: #ffb642;">조리법</h3>
						<ol>
							<!-- 재료 하나씩 li에 작성 -->
							<li  class="recipe">먼저 표고버섯과 새송이버섯 그리고 양파까지 적당한 크기로 썰어줍니다.</li>
							<li  class="recipe">올리브유를 두른 팬에 다진 마늘을 넣고 볶아줘서 마늘향이 풍부하게 나도록 해주고,썰어놓은 새송이버섯, 표고버섯, 양파를 넣고 같이 볶아줍니다.</li>
							<li  class="recipe">간장 3숟가락 굴 소스 1숟가락 설탕을 섞어서 소스를 만들어 줍니다.</li>
							<li  class="recipe">버섯과 양파가 적당히 잘 볶아지면 만들어 놓은 소스를 부어주고 물도 같은 비율 정도로 넣고 끓여줍니다.</li>
							<li  class="recipe">이때 끓여주면서 간을 살짝 봐서 짜다면 물을 조금 더 넣는 방식으로 해주는 게 좋습니다.</li>
							<li  class="recipe">살짝 끓여주면 건강한 느낌 나는 버섯덮밥 완성입니다.</li>
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