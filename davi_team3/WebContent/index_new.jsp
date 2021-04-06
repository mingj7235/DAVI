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
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slippry.css" />
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/index.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" 
		integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
		<style>
			body{
				font-family: 'Sunflower', sans-serif;
			}
			
			h1, h2, h3, h4 {
				font-family: 'Sunflower', sans-serif;
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
								<!-- 실험용 헤더 -->
								<c:import url="/app/header/header_old.jsp" />

							<!-- Banner -->
								<section style="padding:13% 0;">
									<div style="display:flex; justify-content:center; width:80%; margin:auto;">
									<div class="content" style="width:55%; margin-top:3%;">
										<div style="padding:2%; width:80%; margin:auto; margin-bottom:0; ">
											<img alt="" 
											src="https://cdn.discordapp.com/attachments/821644547493986328/827345147972550666/intro_1.png"
											style="width:100%;">
										</div>
										<div style="display:flex; justify-content:space-between; width:70%; margin:auto; padding:3% 7%;">
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<i class="far fa-clipboard"></i>
													식단관리
												</a>
											</div>
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<i class="fas fa-mobile-alt"></i>
													인증게시판
												</a>
											</div>
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<i class="fas fa-chalkboard-teacher"></i>
													자유게시판
												</a>
											</div>
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<i class="fas fa-running"></i>
													홈트레이닝
												</a>
											</div>
										</div>
									</div>
									<div style="width:35%;">
										<ul id="demo1">
											<li><a href="#slide1"><img src="https://cdn.discordapp.com/attachments/821644547493986328/827334259891109888/3..png" class="slide-img"></a></li>
											<li><a href="#slide2"><img src="https://cdn.discordapp.com/attachments/821644547493986328/827334268551430225/1.png" class="slide-img"></a></li>
											<li><a href="#slide3"><img src="https://cdn.discordapp.com/attachments/821644547493986328/827346405688606720/1_ver2.png" class="slide-img"></a></li>
											<li><a href="#slide3"><img src="images/slide_img04.png" class="slide-img"></a></li>
										</ul>
									</div>
									</div>
								</section>

							<!-- Section -->
								<section style="padding:6% 2%;">
									<!-- <header style="display:flex; flex-direction:column; justify-content:center; align-items:center; margin-bottom:0.5%;">
										<h1 style="padding-right:10px; margin-bottom:1.5%; font-size:3em;">다비의 Daily 보고서</h1>
										<p>매일매일 관리받아보세요!</p>
									</header> -->
									
										 <div style="display:flex; justify-content:center; align-items:center; margin-bottom:4%;">
									      	<div class="col-12" style="width:60%;">
									          <div id="chart_div"></div>
									      	</div>
									      	<div style="width:40%; padding:0 2%; color:#7f888f;" class="graph-description">
									      		<span style="color:black !important;">
									      			오늘의 난 얼만큼 변했을까?
									      		</span><br><br>
									   			매일매일 자신의 변화를 <br>
									   			눈으로 직접 확인하세요.<br>
									   			자신의 변화를 실시간으로 확인하면<br> 
									   			동기부여가 더욱 될것입니다.
									      	</div>
									     </div>
									      
									      <div style="display:flex; justify-content:center; align-items:center; margin-left:6%;">
									         <div style="width:40%; display:flex; justify-content:center;">
										          <div style="padding:0 2%; color:#7f888f;" class="graph-description">
										      		<span style="color:black !important;">
										      			매일매일 BMI 체크!
										      		</span><br><br>
										   			BMI지수는 비만도를 평가하는 데 <br>
										   			가장 많이 쓰이는 지표랍니다.<br>
													몸매 유지에 있어서 가장 중요한 지표예요.<br>
													다비와 함께 매일 BMI 체크해볼까요?
										     	</div>
									     	</div>
									     	 <div class="col-9"  style="width:60%;"> 
										     	<div id="chart_div2" style="padding-left: 4%; height:500px;"></div>						     
									     	 </div>
								         </div>
								</section>
							<!-- Section -->
							<section>
										<div style="display:flex; justify-content:space-between; align-items:center;margin:3% auto; padding:0 10%;">
											<div style="width:50%;">
												<ul id="demo2">
													<li><a href="#slide1"><img src="https://cdn.discordapp.com/attachments/821644547493986328/828491810921119754/2.png" class="slide-img-ver2"></a></li>
													<li><a href="#slide2"><img src="https://cdn.discordapp.com/attachments/821644547493986328/828491814909640734/3.png" class="slide-img-ver2"></a></li>
													<li><a href="#slide3"><img src="https://cdn.discordapp.com/attachments/821644547493986328/828491816310800474/4.png" class="slide-img-ver2"></a></li>
													<li><a href="#slide3"><img src="https://cdn.discordapp.com/attachments/821644547493986328/828491820345458758/1.png" class="slide-img-ver2"></a></li>
												</ul>
											</div>
											<div style="width:40%; padding:0 2%; color:#7f888f;" class="graph-description">
									      		<span style="color:black !important;" >
									      			바보야.. 운동보다 식단이야..
									      		</span><br><br>
									   			다이어트에 가장 중요한건 뭘까요?<br><br>

												런닝, 걷기, 헬스 등 운동이 먼저 생각이 나겠지만,<br>
												사실은 꾸준한 식단관리가 가장 중요하답니다.<br><br>
												
												무작정 굶는다고 살이 빠지지 않아요!<br><br>
												
												무엇을 먹어야 살이 빠질지,<br>
												또 어떻게 해먹어야 좋을지 잘 모르겠죠?<br><br>
												
												<span style="color:black !important;">
									      			다비가 해줄게요, 다비만 믿어요
									      		</span><br><br>
									      		다비는 일주일동안 무엇을 먹어야할지,<br>
												또 어떻게 해먹어야할지,<br>
												친절하고 철저하게 관리해줄 준비가 되어있어요.<br><br>
												
												다비가 해 줄게요, 다비만 믿어요.
									     	</div>
										</div>
									
								</section>
								

							<!-- Section -->
								<section style="padding:4% 10% 4% 6%;">
									<div class="headers" style="display:flex; margin-bottom:2%;">
										<header id="best" class="major" style="margin-right:15px; cursor:pointer;">
											<h3 style="padding-right:10px;">베스트 인증 게시판</h3>
										</header>
										<h3 style="margin-right:15px;">|</h3>
										<header id="free" class="" style="margin-right:15px; cursor:pointer;">
											<h3 style="padding-right:10px;">자유 게시판</h3>
										</header>
										<h3 style="margin-right:15px;">|</h3>
										<header id="cheat" class="" style="margin-right:15px; cursor:pointer;">
											<h3 style="padding-right:10px;">치팅 모임</h3>
										</header>
									</div>
									
									<div id="best_posts" class="posts" style="width:100%; margin:auto; padding:3% 6em 3% 0; border:3px solid #003bfb;">
										<article style="">
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">1st</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;20901</span>
											</div>
											<div>
												<a href="#" class="image">
													<img src="images/pic01.jpg" alt="" style="height:auto;"/>
												</a>
											</div>
											<h3>Interdum aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">2nd</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;18902</span>
											</div>
											<a href="#" class="image"><img src="images/pic02.jpg" alt="" style="height:auto;"/></a>
											<h3>Nulla amet dolore</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">3rd</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;16239</span>
											</div>
											<a href="#" class="image"><img src="images/pic03.jpg" alt="" style="height:auto;"/></a>
											<h3>Tempus ullamcorper</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">4th</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;13289</span>
											</div>
											<a href="#" class="image"><img src="images/pic04.jpg" alt="" style="height:auto;"/></a>
											<h3>Sed etiam facilis</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">5th</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;11092</span>
											</div>
											<a href="#" class="image"><img src="images/pic05.jpg" alt="" style="height:auto;"/></a>
											<h3>Feugiat lorem aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">6th</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;9999</span>
											</div>
											<a href="#" class="image"><img src="images/pic06.jpg" alt="" style="height:auto;"/></a>
											<h3>Amet varius aliquam</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum.</p>
										</article>
									</div>
									<div id="free_posts" class="posts" style="display:none;">
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">1st</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;20901</span>
											</div>
											<a href="#" class="image"><img src="images/pic01.jpg" alt="" /></a>
											<h3>Interdum aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">2nd</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;18902</span>
											</div>
											<a href="#" class="image"><img src="images/pic02.jpg" alt="" /></a>
											<h3>Nulla amet dolore</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">3rd</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;16239</span>
											</div>
											<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
											<h3>Tempus ullamcorper</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">4th</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;13289</span>
											</div>
											<a href="#" class="image"><img src="images/pic04.jpg" alt="" /></a>
											<h3>Sed etiam facilis</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">5th</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;11092</span>
											</div>
											<a href="#" class="image"><img src="images/pic05.jpg" alt="" /></a>
											<h3>Feugiat lorem aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">6th</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;9999</span>
											</div>
											<a href="#" class="image"><img src="images/pic06.jpg" alt="" /></a>
											<h3>Amet varius aliquam</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
									</div>
									
									<div id="cheat_posts" class="posts" style="display:none;">
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.6rem; font-weight:bold;">서울/경기</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;20901</span>
											</div>
											<a href="#" class="image"><img src="images/pic01.jpg" alt="" /></a>
											<h3>Interdum aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.6rem; font-weight:bold;">서울/경기</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;18902</span>
											</div>
											<a href="#" class="image"><img src="images/pic02.jpg" alt="" /></a>
											<h3>Nulla amet dolore</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.6rem; font-weight:bold;">강원도</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;16239</span>
											</div>
											<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
											<h3>Tempus ullamcorper</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.6rem; font-weight:bold;">충청도</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;13289</span>
											</div>
											<a href="#" class="image"><img src="images/pic04.jpg" alt="" /></a>
											<h3>Sed etiam facilis</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.6rem; font-weight:bold;">전라도</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;11092</span>
											</div>
											<a href="#" class="image"><img src="images/pic05.jpg" alt="" /></a>
											<h3>Feugiat lorem aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.6rem; font-weight:bold;">경상도</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;9999</span>
											</div>
											<a href="#" class="image"><img src="images/pic06.jpg" alt="" /></a>
											<h3>Amet varius aliquam</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
										</article>
									</div>
								</section>
							
							<div>
								<c:import url="/app/footer/footer_test.jsp"/>
							</div>
							
						</div>
					</div>
						<c:import url="/app/footer/footer.jsp" />
					
					
			</div>
			

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/slippry.js"></script>
			<script src="${pageContext.request.contextPath}/index.js"></script>
			
			<!-- 차트 로딩부분 -->
			<script src="https://www.gstatic.com/charts/loader.js"></script>
			<script src="${pageContext.request.contextPath}/app/dietary/chart_index.js"></script>
			<script>
			console.log(window.outerWidth);
			$(function() {
				var demo1 = $("#demo1").slippry({
					// transition: 'fade',
					// useCSS: true,
					 speed: 1500,
					// pause: 3000,
					// auto: true,
					// preload: 'visible',
					// autoHover: false
				});

				$('.stop').click(function () {
					demo1.stopAuto();
				});

				$('.start').click(function () {
					demo1.startAuto();
				});

				$('.prev').click(function () {
					demo1.goToPrevSlide();
					return false;
				});
				$('.next').click(function () {
					demo1.goToNextSlide();
					return false;
				});
				$('.reset').click(function () {
					demo1.destroySlider();
					return false;
				});
				$('.reload').click(function () {
					demo1.reloadSlider();
					return false;
				});
				$('.init').click(function () {
					demo1 = $("#demo1").slippry();
					return false;
				});
			});
		</script>
		<script>
			$(function() {
				var demo2 = $("#demo2").slippry({
					// transition: 'fade',
					// useCSS: true,
					 speed: 1500,
					// pause: 3000,
					// auto: true,
					// preload: 'visible',
					// autoHover: false
				});

				$('.stop').click(function () {
					demo1.stopAuto();
				});

				$('.start').click(function () {
					demo1.startAuto();
				});

				$('.prev').click(function () {
					demo1.goToPrevSlide();
					return false;
				});
				$('.next').click(function () {
					demo1.goToNextSlide();
					return false;
				});
				$('.reset').click(function () {
					demo1.destroySlider();
					return false;
				});
				$('.reload').click(function () {
					demo1.reloadSlider();
					return false;
				});
				$('.init').click(function () {
					demo1 = $("#demo1").slippry();
					return false;
				});
			});
		</script>
	</body>
</html>