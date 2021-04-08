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
								<c:import url="/app/header/header.jsp" />

							<!-- Banner -->
								<section style="padding:9% 0; margin:5% 0;">
									<div style="display:flex; justify-content:center;">
									<div class="content" style="width:50%;">
										<div style="padding:2%; width:80%; margin:auto;">
											<img alt="" 
											src="https://cdn.discordapp.com/attachments/821644547493986328/827345147972550666/intro_1.png"
											style="width:100%;">
										</div>
										<div style="display:flex; justify-content:space-between; width:80%; margin:auto; padding:3% 3%;">
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<img alt="" src="${pageContext.request.contextPath}/images/개인식단.png">
													식단관리
												</a>
											</div>
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<img alt="" src="${pageContext.request.contextPath}/images/smartphone.png">
													인증게시판
												</a>
											</div>
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<img alt="" src="${pageContext.request.contextPath}/images/freeboard.png">
													자유게시판
												</a>
											</div>
											<div class="icon-box">
												<a href="#" style="height:auto;">
													<img alt="" src="${pageContext.request.contextPath}/images/exercise.png">
													홈트레이닝
												</a>
											</div>
										</div>
									</div>
									<div style="width:40%;">
										<ul id="demo1">
											<li><a href="#slide1"><img src="https://cdn.discordapp.com/attachments/821644547493986328/827334259891109888/3..png" class="slide-img"></a></li>
											<li><a href="#slide2"><img src="https://cdn.discordapp.com/attachments/821644547493986328/827334268551430225/1.png" class="slide-img"></a></li>
											<li><a href="#slide3"><img src="https://cdn.discordapp.com/attachments/821644547493986328/827346405688606720/1_ver2.png" class="slide-img"></a></li>
											<li><a href="#slide3"><img src="images/slide_img04.png" class="slide-img"></a></li>
										</ul>
									</div>
									</div>
								</section>
								
								<!-- 실험용 섹션 -->
								<section style="padding:3% 0; margin:5% 0;">
									<div style="display:flex; justify-content:center; align-items:center;">
									<div class="content" style="width:50%;">
										<div style="padding:2%; width:80%; margin:auto;">
											<img alt="" 
											src="${pageContext.request.contextPath}/images/002.png"
											style="width:100%;">
										</div>
										<div style="display:flex; justify-content:space-between; width:80%; margin:auto; padding:3% 3%;">
										</div>
									</div>
									<div style="width:40%;">
										<div id="chart_div3"></div>
										<div id="chart_div2"></div>
										<div id="chart_div4"></div>
									</div>
									</div>
								</section>




							<!-- Section -->
								<section style="">
									<div style="display:flex; justify-content:space-between; width:80%; margin:auto; padding:3% 3%;">
										<div class="content" style="width:50%;">
											<div style="padding:2%; width:80%; margin:auto;">
											<img alt="" 
											src="https://cdn.discordapp.com/attachments/821644547493986328/827345147972550666/intro_1.png"
											style="width:100%;">
										</div>
										</div>
										
										<div class="second_section_div">
											<div id="chart_div3"></div>
											<div id="chart_div2"></div>
											<div id="chart_div4"></div>
										</div>
									</div>
								</section>
							<!-- Section -->
								<section>
									<h3 align="left" style="margin-bottom:3%; margin-left:6%; font-size:2rem;">다비의 맞춤형 식단</h3>
									<h4 align="left" style="margin-bottom:5%; margin-left:6%; color:#7f888f; font-size:1.3rem;">
										다비에서 칼로리와 영양소를 고려하여 매주 새로운 식단을 제공하고 있어요.
									</h4>
									<div style="width: 80%;margin: auto;">
										<div class="row gtr-200" >
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식1</span>												
												</a>
											</div>
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식2</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식3</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식4</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식5</span>												
												</a>
											</div>
											<div class="resize">	
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식6</span>												
												</a>
											</div>							
										</div>
										<div class="row gtr-200" >
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식7</span>												
												</a>
											</div>
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식8</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식9</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식10</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식11</span>												
												</a>
											</div>
											<div class="resize">	
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식12</span>												
												</a>
											</div>							
										</div>
										<div class="row gtr-200" >
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식13</span>												
												</a>
											</div>
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식14</span>											
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식15</span>											
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식16</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식17</span>												
												</a>
											</div>
											<div class="resize">	
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>건강식18</span>												
												</a>
											</div>							
										</div>
									</div>
									
								</section>
								

							<!-- Section -->
								<section style="padding:4% 10% 4% 6%;">
									<div class="headers" style="display:flex; margin-bottom:2%;">
										<!-- <header id="best" class="major" style="margin-right:15px; cursor:pointer;">
											<h3 style="padding-right:10px;">베스트 인증 게시판</h3>
										</header>
										<h3 style="margin-right:15px;">|</h3>
										<header id="free" class="" style="margin-right:15px; cursor:pointer;">
											<h3 style="padding-right:10px;">자유 게시판</h3>
										</header>
										<h3 style="margin-right:15px;">|</h3>
										<header id="cheat" class="" style="margin-right:15px; cursor:pointer;">
											<h3 style="padding-right:10px;">치팅 모임</h3>
										</header> -->
										
										<p id="best" style="margin-right:15px; cursor:pointer; font-weight:bold;">베스트 인증 게시판</p>
										<p style="margin-right:15px;">|</p>
										<p id="free" style="margin-right:15px; cursor:pointer;">자유 게시판</p>
										<p style="margin-right:15px;">|</p>
										<p id="cheat" style="margin-right:15px; cursor:pointer;">치팅 모임</p>
										
									</div>
									
									<div id="best_posts" class="posts" style="width:100%; margin:auto; padding:3% 6em 3% 0;">
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
									
									<div id="free_posts" class="posts" style="display:none; width:100%; margin:auto; padding:3% 6em 3% 0;">
										<article>
											<div style="margin-bottom:20px; display:flex; justify-content:space-between; align-items:flex-end;">
												<span style="color:black; font-size:1.8rem; font-weight:bold;">1st</span>
												<span class="icon fa-gem" style="color:#ffaec9; font-size:1rem; padding-bottom:5px;">&nbsp;20901</span>
											</div>
											<a href="#" class="image"><img src="images/pic01.jpg" alt=""/></a>
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
									
									<div id="cheat_posts" class="posts" style="display:none; width:100%; margin:auto; padding:3% 6em 3% 0;">
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
	</body>
</html>