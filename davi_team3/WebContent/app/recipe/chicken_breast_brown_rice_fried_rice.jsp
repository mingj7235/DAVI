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
<title>닭가슴살 현미 볶음밥</title>
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
						닭가슴살 현미 볶음밥
						</h2>
						<h3 style="color: #ffb642;">
						칼로리 : 320kcal
						</h3>
						<h3 style="margin-bottom:10%;">
						닭고기는 단백질이 많은 육류로 두뇌 성장을 돕는 역할은 물론 몸을 유지하는 데 있어서 뼈대의 역할, 세포 조직의 생성, 각종 질병을 예방해 준다. 또한 필수아미노산이 풍부하므로 뇌신경 전달 물질의 활동을 촉진해 스트레스를 이겨 내도록 도와준다.
						</h3>
					</div>
					<div style="width:40%;">
						<!-- 식단 이미지  -->
						<img alt="" src="img/chicken_breast_brown_rice_fried_rice.png" style="max-width:100%; height:auto;">
					</div>
				</div>
				
				<div style="margin:10%; auto; text-align:center; display:flex; justify-content:space-between;">
					<div style="width:25%;">
							<i class="far fa-hand-point-down" style="font-size:2em;"></i>
							<!-- 준비시간 작성 -->
							<p style="margin-top:3%;">PREP : 5 MINS</p> 
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
							<li>닭 가슴살 1/2조각</li>
							<li>현미밥 1/2공기</li>
							<li>파프리카 노랑 1개</li>
							<li>파프리카 빨강 1개</li>
							<li>청양고추 1/2개</li>
							<li>당근 1/2개</li>
							<li>소금</li>
							<li>물</li>
						</ul>
					</div>
					<div style="width:50%">
						<h3 style="color: #ffb642;">조리법</h3>
						<ol>
							<!-- 재료 하나씩 li에 작성 -->
							<li  class="recipe">현미를 30분 이상 불리고 밥을 지어주세요</li>
							<li  class="recipe">먼저 준비된 재료를 소분하여 두시고 닭 가슴살은 다져 주세요</li>
							<li  class="recipe">반 공깃밥을 준비 시켜놓고, 마른 팬에 당근을 먼저 1분간 볶고-청양고추 넣어서 함께 볶다가 매운 향이 슬슬 올라올 때쯤 파프리카를 전부 넣어 볶아주세요</li>
							<li  class="recipe">그리고 다져진 닭 가슴살을 넣어서 후추를 약간, 소금 약간 넣어서 볶아주시다가 밥을 넣어 볶아주세요</li>
							<li  class="recipe">1~2분 정도 충분히 볶아 주다가 소주잔 반잔을 넣어서 빠르게 섞어주고 물기가 사라지면 바로 불을 꺼주세요</li>
							<li  class="recipe">바로,물을 넣어주면 모든 향과 맛이 서고 어우러지고 밥알에 스며들고 특히 더 촉촉해지면서 메마르지 않아 좋습니다</li>
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