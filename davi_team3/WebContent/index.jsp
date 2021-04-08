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
			
			.second_section {
				background-color: rgba(0, 59, 251, 0.1);
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
							</div>
							<div class="second_section">
								<div class="inner">
								<!-- 차트 섹션 -->
								<section style="padding:9% 0; margin:5% 0;">
									<div style="display:flex; justify-content:center; align-items:center;">
									<div style="width:40%;">
										<div id="chart_div3"></div>
										<div id="chart_div2"></div>
										<div id="chart_div4"></div>
									</div>
									<div class="content" style="width:50%;">
										<div style="padding:2%; width:80%; margin:auto;">
											<img alt="" 
											src="https://cdn.discordapp.com/attachments/821644547493986328/829590045923999775/123.png"
											style="width:100%;">
											
											<div style="margin-top:8%;">
												<p style="font-size:1.7rem; color:#7f888f; font-weight:bold;">
													다비가 매일 보고해드려요.<br>
													다비의 보고서를 보며 동기부여를 얻어보세요.
												</p>
											</div>
											
											<div style="margin-top:5%;">
												<a href="#" style="font-size:1.7rem;" >
													다비의 보고 받기 >
												</a>
											</div>
										</div>
										<div style="display:flex; justify-content:space-between; width:80%; margin:auto; padding:3% 3%;">
										</div>
									</div>
									</div>
								</section>
								</div>
							</div>
								
							<div class="inner">
								<!-- 레시피 섹션 -->
								<section style="padding:9% 0; margin:5% 0;">
									<div style="display:flex; justify-content:center; align-items:center;">
									<div class="content" style="width:50%;">
										<div style="padding:2%; width:80%; margin:auto;">
											<img alt="" 
											src="https://cdn.discordapp.com/attachments/821644547493986328/829212235372953610/1245.png"
											style="width:100%;">
											<div style="margin-top:8%;">
												<p style="font-size:1.7rem; color:#7f888f; font-weight:bold;">
													다비가 매일 보고해드려요.<br>
													다비의 보고서를 보며 동기부여를 얻어보세요.
												</p>
											</div>
											
											<div style="margin-top:5%;">
												<a href="#" style="font-size:1.7rem;" >
													다비의 보고 받기 >
												</a>
											</div>												
										</div>
										<div style="display:flex; justify-content:space-between; width:80%; margin:auto; padding:3% 3%;">
										</div>
									</div>
									<div style="width:40%;">
										<img alt="" 
										src="https://cdn.discordapp.com/attachments/821644547493986328/828491810921119754/2.png"
										style="width:100%;">
									</div>
									</div>
								</section>
							</div>

							<!-- Section -->
							<div class="second_section">
								<div class="inner">
								
							<div>
								<c:import url="/app/footer/footer.jsp"/>
							</div>
						</div>
						</div>
							
						</div>
					</div>
						<c:import url="/app/footer/sidebar.jsp" />
					
					
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