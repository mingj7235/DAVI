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
<title>소고기 볶음밥</title>
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
						소고기 볶음밥
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 280kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						소고기와 같은 양질의 단백질을 적정량 섭취하는 것도 근육량을 늘리고 기초 대사량을 높여 체중 감량에 도움이 된다. 포만감을 지속하는 효과도 있다.
						</h3>
					</div>
					<div style="width:40%;">
						<!-- 식단 이미지  -->
						<img alt="" src="img/beef_fried_rice.png" style="max-width:100%; height:auto;">
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
							<p style="margin-top:3%;">DIFFICULTY : NORMAL</p> 
					</div>
							
				</div>
				
				<div style="display:flex; justify-content:space-between; margin:0 auto; padding:0 10%;">
					<div style="margin-right:6%;">
						<h3 style="color: #ffb642;">재료</h3>
						<ul class="material" style="list-style-type:square;">
							<!-- 재료 하나씩 li에 작성 -->
							<li>소고기 200g</li>
							<li>양파 1/4개</li>
							<li>새송이버섯 1개</li>
							<li>당근 1/5개</li>
							<li>호박 1/5개</li>
							<li>밥 1인분</li>
							<li>굴 소스 </li>
							<li>시판 소갈비양념</li>
							<li>간장 </li>
							<li>후추</li>
							<li>소금 </li>
							<li>참기름</li>
						</ul>
					</div>
					<div style="width:50%">
						<h3 style="color: #ffb642;">조리법</h3>
						<ol>
							<!-- 재료 하나씩 li에 작성 -->
							<li  class="recipe">야채 재료들은 잘게 다져줍니다.</li>
							<li  class="recipe">호박을 제외한 야채에 소고기를 넣고 양념을 넣어 조물조물해줍니다.</li>
							<li  class="recipe">양념이 재료에 골고루 배어들었다면 프라이팬에 기름을 두르고 볶아줍니다.</li>
							<li  class="recipe">고기가 어느 정도 익으면 호박을 넣어줍니다.</li>
							<li  class="recipe">센 불에 살짝 볶다가 준비된 밥을 넣고 볶아줍니다. </li>
							<li  class="recipe">잘 볶아진 볶음밥에 참기름 한 스푼을 넣고 마무리해 줍니다.</li>
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